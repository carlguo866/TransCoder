python -m preprocessing.preprocess \
	/mnt/sabrent/carl/TransCoder/data/proper_eval3/ \
--lang1 llvm \
--lang2 cpp \
--keep_comments False \
--bpe_train_size 0 \
--test_size 500 \
--parallel_size 500 \
--local True \
