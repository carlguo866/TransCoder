python XLM/train.py \
    --n_heads 8 \
    --bt_steps '' \
    --max_vocab 64000 \
    --word_mask_keep_rand '0.8,0.1,0.1' \
    --word_blank 0 \
    --data_path '/home/carl/TransCoder/data/data_aebt/cpp-llvm-.XLM-syml' \
    --save_periodic 0 \
    --bptt 512 \
    --lambda_clm 1 \
    --ae_steps '' \
    --fp16 true \
    --share_inout_emb true \
    --lambda_mlm 1 \
    --sinusoidal_embeddings false \
    --word_shuffle 0 \
    --mlm_steps 'cpp,llvm' \
    --attention_dropout 0 \
    --split_data false \
    --length_penalty 1 \
    --max_epoch 20 \
    --stopping_criterion '_valid_mlm_ppl,10' \
    --lambda_bt 1 \
    --dump_path '/mnt/sabrent/carl/TransCoder/output' \
    --lambda_mt 1 \
    --epoch_size 100000 \
    --early_stopping false \
    --gelu_activation false \
    --n_layers 6 \
    --optimizer 'adam_inverse_sqrt,warmup_updates=10000,lr=0.0003,weight_decay=0.01' \
    --validation_metrics _valid_mlm_ppl \
    --eval_bleu false \
    --dropout '0.1' \
    --mt_steps '' \
    --reload_emb '' \
    --batch_size 32 \
    --context_size 0 \
    --word_dropout 0 \
    --reload_model '' \
    --min_count 0 \
    --lgs 'cpp-llvm' \
    --sample_alpha 0 \
    --word_pred '0.15' \
    --amp 2 \
    --max_batch_size 0 \
    --clip_grad_norm 5 \
    --emb_dim 1024 \
    --encoder_only true \
    --beam_size 1 \
    --clm_steps '' \
    --exp_name mlm_cpp_llvm \
    --lambda_ae 1 \
    --lg_sampling_factor '-1' \
    --eval_only false \