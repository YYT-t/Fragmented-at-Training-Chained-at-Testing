for len in 5
do
for gt in 0
do
for child_len in 3
do
CUDA_VISIBLE_DEVICES=9  python main.py --num_icl_train_traces 5000 \
               --num_mk_train_traces  20000\
               --max_examples 5\
               --graph_type $gt\
               --graph_len $len\
               --graph_width 2\
                --merge_pos 0\
               --max_child_chain_len $child_len\
               --vocab_size 52\
               --env_val_num_low 10\
               --chain_val_num 50\
               --leak_prob_node 0\
               --leak_prob_val 0\
                --tl_low 4\
                --addlen 5\
                --nearlen 100\
                --context_lower 1\
                --context_upper 6\
                --context_div 6\
               --n_layers 36\
                --n_heads 20\
                --hidden_size 1280\
                --if_train n\
                --train_epoch 20 \
                --per_device_train_batch_size 4\
                --per_device_eval_batch_size 4\
                --save_steps 31000\
                --if_upload y\
                --if_test n\
                --if_plot n \
                --if_probe n\
                --probe_mean_num 10\
                --test_epoch 31000\
                --if_in_colab n
done
done
done