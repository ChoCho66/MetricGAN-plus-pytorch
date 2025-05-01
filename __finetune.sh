# Use .segan_pytorch
# python inference.py --weight_path results/ --weight_file best_model.pth \
#   --save_wavs_path pred_wav --base_path '/disk4/chocho/_datas/VoiceBank+DEMAND+16k'
CUDA_VISIBLE_DEVICES='1' python main.py --exp_name exp20250318-finetune --target_metric pesq \
  --is_finetune 1 \
  --epochs 3 \
  --skip_val_epoch 1 \
  --batch_size 16 \
  --train_noisy_path /disk4/chocho/_datas/THCHS-30-train-noisy/train-noisy/ \
  --train_clean_path /disk4/chocho/_datas/THCHS-30/data_thchs30/train/ \
  --test_noisy_path /disk4/chocho/_datas/THCHS-30/test-data1/test-noisy1/ \
  --test_clean_path /disk4/chocho/_datas/THCHS-30/test-data1/test-clean1/cafe \

# CUDA_VISIBLE_DEVICES='1'
# --base_path '/disk4/chocho/_datas/VCTK_DEMAND16k' \