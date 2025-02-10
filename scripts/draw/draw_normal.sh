export CUDA_VISIBLE_DEVICES="2"
nl=3
nh=3
hidden_size=720

python demonstration/draw.py \
            --mode main \
                --type standard \
                --name acc_map_1 \
               --n_layers $nl\
                --n_heads $nh\
                --hidden_size $hidden_size\