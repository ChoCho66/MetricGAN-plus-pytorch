# Use .segan_pytorch
export CUDA_VISIBLE_DEVICES='1'
taskset -c 44-47 nice -n 46 python inference.py --weight_path results/ \
  --weight_file exp20250318/model/best_model.pth \
  --save_wavs_path /disk4/chocho/_enhanced-wav/MetricGAN+/ \
  --test_clean_path /disk4/chocho/_datas/VCTK_DEMAND16k/test/clean \
  --test_noisy_path /disk4/chocho/_datas/VCTK_DEMAND16k-SNR/noisy--1




# taskset -c 46-47 nice -n 46 python inference.py --weight_path results/ \
#   --weight_file exp20250318/model/best_model.pth \
#   --save_wavs_path exp20250318/pred_wav \
#   --base_path '/disk4/chocho/_datas/VCTK_DEMAND16k'


# --weight_file best_model.pth \

# --weight_file exp20250318/model/best_model.pth \
# Test PESQ:3.138 | Test CSIG:4.164 | Test CBAK:3.117 | Test COVL:3.645

# --weight_file exp1/model/PESQ-GAN_trial3.pth \
