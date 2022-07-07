import csv 
import os 
import subprocess 
import time 
import tqdm
from pathlib import Path
import gzip
from multiprocessing import Pool, cpu_count
row_num = {
        'submission_id': 0, 
        'problem_id': 1, 
        'language': 4, 
        'status': 7
    }

def execute(num): 
    count = 0 
    with open(f'/home/carl/Project_CodeNet/metadata/p{"{:05d}".format(num)}.csv') as csv_file:  
        print(f"heres the num {num}", flush=True) 
        csv_reader = csv.reader(csv_file, delimiter=',')
        for row in csv_reader: 
            count +=1
            if row[row_num['language']] == 'C' and row[row_num['status']] == 'Accepted': 
                c_name = f"/home/carl/Project_CodeNet/data/{row[row_num['problem_id']]}/C/{row[row_num['submission_id']]}.c" 
                assert os.path.isfile(c_name), c_name
                llvm_name = c_name[:-2]+ '.ll'
                result = subprocess.run(f"clang {c_name} -w -femit-all-decls -S -emit-llvm -o {llvm_name}", shell=True, 
                        stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
                if result.stderr.decode('UTF-8') == '': 
                    c_command = f"python /home/carl/TransCoder/scripts/json_generator.py {c_name} placeholder {(int)(num/40)} 1 codenet_new"
                    result = subprocess.run(c_command, shell=True, 
                            stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
                    if result.stderr.decode('UTF-8') != '': 
                        print(result.stderr.decode('UTF-8'), flush=True)
                    llvm_command = f"python /home/carl/TransCoder/scripts/json_generator.py {llvm_name} placeholder {(int)(num/40)} 0 codenet_new"
                    result = subprocess.run(llvm_command, shell=True, 
                            stdout=subprocess.PIPE, stderr=subprocess.PIPE, executable='/bin/bash')
                    if result.stderr.decode('UTF-8') != '': 
                        print(result.stderr.decode('UTF-8'), flush=True)
                else:
                    print(result.stderr.decode('UTF-8')[:result.stderr.decode('UTF-8').index('\n')], flush=True)
    return count
if __name__ == '__main__': 
    
    num_in_json_file = 1
    json_num = 1
    folder_name = Path(f"/home/carl/TransCoder/data/codenet_new/")
    for lang in ['cpp','llvm']:
        if not folder_name.is_dir(): 
            folder_name.mkdir()
        if not folder_name.joinpath(lang).is_dir():
            folder_name.joinpath(lang).mkdir()
        for i in range(int(2520/40), int(4053/40) + 1): 
            print(i)
            outF = gzip.open(folder_name.joinpath(f"{lang}/{lang}.{'{:03d}'.format(i)}.json.gz"), "w") 
            outF.close()

    pool = Pool(cpu_count())
    start = time.time()
    results = pool.imap(execute, list(range(2520, 4053)))
    results = [result for result in results]
    print(results)
    end = time.time()
    print(f"time: {end-start}")
