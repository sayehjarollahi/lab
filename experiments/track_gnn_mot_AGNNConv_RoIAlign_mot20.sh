#!/bin/bash
model_path=$1
# MOT20 Test
cd ../src
CUDA_VISIBLE_DEVICES=3 python track_gnn.py \
  --task gnn_mot \
  --arch dlagnn_34 \
  --load_model $model_path \
  --use_letter_box 1 \
  --save_image 1 \
  --exp_name mot20_test2 \
  --use_residual 0 \
  --graph_type local \
  --gnn_type AGNNConv \
  --return_pre_gnn_layer_outputs 1 \
  --inference_gnn_output_layer 1 \
  --copy_head_weights 0 \
  --num_gnn_layers 1 \
  --use_roi_align 1 \
  --save_videos 1 \
  --p_K 50 \
  --K 500 \
  --test_mot20 True
cd ../experiments
