python -m preprocessing.preprocess \
	/mnt/sabrent/carl/TransCoder/data/data_try3/ \
--lang1 llvm \
--lang2 cpp \
--keep_comments False \
--bpe_train_size 0 \
--test_size 1000 \
--local True \