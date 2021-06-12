python XLM/train.py \
--n_heads 8 \
--bt_steps 'llvm_sa-cpp_sa-llvm_sa,cpp_sa-llvm_sa-cpp_sa' \
--max_vocab '-1' \
--word_mask_keep_rand '0.8,0.1,0.1' \
--gen_tpb_multiplier 1 \
--word_blank '0.1' \
--n_layers 6 \
--save_periodic 1 \
--dump_path '/home/carl/TransCoder/output' \
--max_len 512 \
--bptt 256 \
--lambda_clm 1 \
--ae_steps 'cpp_sa,llvm_sa' \
--fp16 true \
--share_inout_emb true \
--lambda_mlm 1 \
--sinusoidal_embeddings false \
--mlm_steps '' \
--word_shuffle 3 \
--tokens_per_batch 2000 \
--has_sentences_ids true \
--attention_dropout 0 \
--split_data false \
--length_penalty 1 \
--max_epoch 200 \
--stopping_criterion '' \
--lambda_bt 1 \
--generate_hypothesis true \
--lambda_mt 1 \
--epoch_size 20000 \
--data_path '/home/carl/TransCoder/data/data_aebt/cpp-llvm-.XLM-syml' \
--gelu_activation false \
--split_data_accross_gpu global \
--optimizer 'adam_inverse_sqrt,warmup_updates=10000,lr=0.0001,weight_decay=0.01' \
--eval_computation false \
--validation_metrics '' \
--eval_bleu true \
--dropout '0.1' \
--mt_steps '' \
--reload_emb '' \
--batch_size 32 \
--context_size 0 \
--word_dropout '0.1'  \
--reload_model '/home/carl/TransCoder/output/mlm_cpp_llvm/1/best-valid_mlm_ppl.pth,/home/carl/TransCoder/output/mlm_cpp_llvm/1/best-valid_mlm_ppl.pth' \
--min_count 0 \
--eval_bleu_test_only false \
--group_by_size true \
--early_stopping false \
--sample_alpha 0 \
--word_pred '0.15' \
--amp 2 \
--max_batch_size 128 \
--clip_grad_norm 5 \
--emb_dim 1024 \
--encoder_only false \
--lgs 'cpp_sa-llvm_sa' \
--clm_steps '' \
--exp_name bt_sa \
--beam_size 1 \
--lambda_ae '0:1,100000:0.1,300000:0' \
--lg_sampling_factor '-1' \
--eval_only false \

