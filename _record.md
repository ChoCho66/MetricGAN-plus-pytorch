Total parameters:1.896M

---


## Summary of `nn` Functions/Modules Used in G
Here’s a concise list of the `nn`-related components directly or indirectly used in the `Generator` class:
1. **`nn.Module`**: Base class for `Generator` and `Learnable_sigmoid`.
2. **`nn.LSTM`**: Recurrent layer for sequence processing.
3. **`nn.LeakyReLU`**: Activation function.
4. **`nn.Linear`**: Fully connected layers (via `xavier_init_layer`).
5. **`nn.Parameter`**: Learnable parameter in `Learnable_sigmoid`.
6. **`nn.init.xavier_uniform_`**: Weight initialization.
7. **`nn.init.zeros_`**: Bias initialization.
8. **`nn.init.orthogonal_`**: Recurrent weight initialization.
9. **`torch.nn.utils.rnn.pack_padded_sequence`**: Sequence packing utility.
10. **`torch.nn.utils.rnn.pad_packed_sequence`**: Sequence unpacking utility.
11. **`torch.nn.utils.spectral_norm`**: Spectral normalization (available but not used in this instance).

### Additional Notes
- The `Learnable_sigmoid` class uses `torch.sigmoid` (from `torch`, not `nn`), which is not technically an `nn` module but is a common activation function paired with PyTorch’s neural network components.
- The `Generator` leverages these `nn` components to build a generative model, likely for tasks involving sequential data (e.g., audio, time series), given the use of LSTM and sequence padding utilities.

Let me know if you’d like further clarification or analysis!


-------

## Train recode

Test set:824
Total parameters:1.896M

### --weight_file exp1/model/PESQ-GAN_trial3.pth
Test PESQ:3.148 | Test CSIG:4.090 | Test CBAK:3.161 | Test COVL:3.606
Total process time:1.20M

### --weight_file exp20250318/model/best_model.pth
Test PESQ:3.138 | Test CSIG:4.164 | Test CBAK:3.117 | Test COVL:3.645
Total process time:1.21M


------

Test set:824
Total parameters:1.896M

## SNR 2

Test PESQ:2.689 | Test CSIG:3.589 | Test CBAK:2.743 | Test COVL:3.100
Total process time:4.20M


## SNR 1

Test PESQ:2.614 | Test CSIG:3.495 | Test CBAK:2.677 | Test COVL:3.011
Total process time:4.17M

## SNR 0

Test PESQ:2.544 | Test CSIG:3.402 | Test CBAK:2.613 | Test COVL:2.925
Total process time:4.22M

## SNR -5

Test PESQ:2.203 | Test CSIG:2.871 | Test CBAK:2.285 | Test COVL:2.462
Total process time:4.23M

## SNR -10

Test PESQ:1.884 | Test CSIG:2.355 | Test CBAK:1.960 | Test COVL:2.031
Total process time:4.39M