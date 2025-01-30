export CUDA_VISIBLE_DEVICES="4"

for n_lh in 12 #8 6 3  #12 6 3 1  #2 4 6
do
for num_traces in  10000  #2000 4000 6000 8000
do
for max_e in 5
do
python draw.py --mode main \
                --type standard \
                --name acc_map_1 \
                --retain_ratio 0.2 \
                --num_icl_train_traces 10000 \
               --num_mk_train_traces  $(($num_traces+$num_traces))\
               --max_examples $max_e\
               --vocab_size 52\
               --env_val_num_low 10\
               --chain_val_num 50\
               --leak_prob_node 0\
               --leak_prob_val 0\
                --tl_low 4\
                --addlen 5\
                --context_lower 1\
                --context_upper 6\
                --context_div 6\
               --n_layers 36\
                --n_heads 20\
                --hidden_size 1280\
                --if_train n\
                --train_epoch 20 \
                --save_steps 20000\
                --if_test y\
                --if_plot n \
                --if_probe n\
                --if_draw n\
                --probe_mean_num 10\
                --if_in_colab n
done
done
done
done
done
done


##$(($num_traces+$num_traces)) \