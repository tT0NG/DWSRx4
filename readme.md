These executable files are made for:
## NTIRE 2017 Super-Resolution Challenge - DWSRx4

### Other scale: [DWSRx2](https://github.com/tT0NG/DWSRx2);  [DWSRx3](https://github.com/tT0NG/DWSRx3)

### Pre-requirement
Python package requirement:

- tensorflow w/GPU @ https://github.com/tensorflow/tensorflow
- pywt @ https://github.com/PyWavelets/pywt
- cv2  @ https://github.com/opencv/opencv

### To execute: 
1. In terminal, type in `python DWSRx4.py`
2. Then a promote asks for testing data set: `Please enter the testing path [hit enter to run default set]:` 
3. Hit enter to run default testing set from DIV2K NTIRE which is stored at: `./Testx4Lum`
4. The final results will be stored at: `./Resultx4Lum`
5. Run `FinalColorSRx4.m` to generate final color SR and store the results in `./Resultx4Color`

### NOTE:
1. The testing data should be bicubic enlarged version of the original down-sampled version. For example, to generate `x4` super-resolution results, the original `x4` down-sampled low-resolution image should first be enlarged to `x4` size, then fed the enlarged version to DWSR (as described in the fact sheet). Use `generateTestX4.m` to generate enlarged LR luminance image.
2. The DWSR weights are stored at: `./Weightx4`
3. The DWSR model is defined in: `netx4.py`
4. The script is *NOT* for training.


_The training code is not fully cleaned up; for academic purpose, please request training from [here](https://drive.google.com/drive/folders/0B_FEGhHunA5gR1Y1WVFxTGkxd1E) by providing basic usage information._
____________
Tiantong@iPAL2017, tong.renly@gmail.com
