# Use .segan_pytorch
# python inference.py --weight_path results/ --weight_file best_model.pth \
#   --save_wavs_path pred_wav --base_path '/disk4/chocho/_datas/VoiceBank+DEMAND+16k'
CUDA_VISIBLE_DEVICES='1' python main.py --exp_name exp20250318 --target_metric pesq \
  --base_path '/disk4/chocho/_datas/VCTK_DEMAND16k' \


# CUDA_VISIBLE_DEVICES='1'