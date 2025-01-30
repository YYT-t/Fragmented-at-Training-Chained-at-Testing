export CUDA_VISIBLE_DEVICES="0"

for nl in 1 2 #8 6 3  #12 6 3 1  #2 4 6
do
for nh in 1 2
do
for num_traces in  10000  #2000 4000 6000 8000
do
for max_e in 5
do
for width in 2 #1 3 4
do 
for len in 5 #5 11 14  #"1-2-2-2-2-2" 
do
for cu in 7
do
for nearlen in 100
do
for merge_pos in 0
do
for gt in 0
do
for child_len in 3 #5 6 7 8 9 10 11 12 13
do
python main.py --num_icl_train_traces 5000 \
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
               --n_layers $nl\
                --n_heads $nh\
                --hidden_size 720\
                --if_train y\
                --train_epoch 5 \
                --save_steps 2000\
                --if_test y\
                --if_plot n \
                --if_probe n\
                --probe_mean_num 10\
                --test_epoch 60000\
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
done

# --if_draw n\
# --if_attn_text n\
##$(($num_traces+$num_traces)) \