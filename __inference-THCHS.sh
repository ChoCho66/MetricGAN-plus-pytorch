# Use .segan_pytorch
# export CUDA_VISIBLE_DEVICES='1'

# SNR_VALUES=(2 1 0 -1 -5 -10)
# SNR_VALUES=(-12 -10 -8 -5 -3 -1 0 1 2 2.5 7.5 12.5 17.5)
# SNR_VALUES=(-18 -15 -12 -9 -6 -3 0 3 6 9 12 15 18)
noises=(cafe car white)

# for SNR in "${SNR_VALUES[@]}"; do
for noise in "${noises[@]}"
do
  taskset -c 46-47 nice -n 46 python inference.py --weight_path results/ \
    --weight_file exp20250318/model/best_model.pth \
    --save_wavs_path "/disk4/chocho/_enhanced-wav/THCHS-30/MetricGAN+/${noise}/" \
    --test_clean_path /disk4/chocho/_datas/THCHS-30/test-clean1/ \
    --test_noisy_path "/disk4/chocho/_datas/THCHS-30/test-noise1/${noise}/"
done

# --weight_file best_model.pth \

# --weight_file exp20250318/model/best_model.pth \
# Test PESQ:3.138 | Test CSIG:4.164 | Test CBAK:3.117 | Test COVL:3.645

# --weight_file exp1/model/PESQ-GAN_trial3.pth \
