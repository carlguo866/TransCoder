python -m preprocessing.preprocess \
	/mnt/sabrent/carl/TransCoder/data/"$1"/ \
--lang1 llvm \
--lang2 cpp \
--keep_comments False \
--bpe_train_size 0 \
--test_size 10000 \
--parallel_size 0 \
--local True \
