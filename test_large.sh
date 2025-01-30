export CUDA_VISIBLE_DEVICES="1"

for nl in 12
do
for num_traces in  10000  
do
for max_e in 5
do
for width in 2 
do 
for len in 8
do
for cu in 6
do
for nearlen in 100
do
for merge_pos in 0
do
for gt in 1
do
for child_len in 5
do
python main.py --num_icl_train_traces 10000 \
               --num_mk_train_traces  $(($num_traces+$num_traces))\
               --max_examples $max_e\
               --graph_type $gt\
               --graph_len $len\
               --graph_width $width\
                --merge_pos $merge_pos\
               --max_child_chain_len $child_len\
               --vocab_size 52\
               --env_val_num_low 10\
               --chain_val_num 50\
               --leak_prob_node 0\
               --leak_prob_val 0\
                --tl_low 4\
                --addlen 5\
                --nearlen $nearlen\
                --context_lower 1\
                --context_upper $cu\
                --context_div $cu\
               --n_layers 36\
                --n_heads 20\
                --hidden_size 1280\
                --if_train n\
                --if_upload n\
                --train_epoch 14 \
                --per_device_train_batch_size 4\
                --per_device_eval_batch_size 4\
                --save_steps 10000\
                --if_test y\
                --if_plot n \
                --if_probe n\
                --probe_mean_num 10\
                --test_epoch 40000\
                --if_in_colab n
done
done
done
done
done
done
done
done
done
done
