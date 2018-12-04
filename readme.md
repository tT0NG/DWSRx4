## Deep wavelet prediction for image super-resolution
The testing code for [_Deep wavelet prediction for image super-resolution, CVPRW, 2017_](http://openaccess.thecvf.com/content_cvpr_2017_workshops/w12/html/Guo_Deep_Wavelet_Prediction_CVPR_2017_paper.html), NTIRE 2017 Super-Resolution Challenge - DWSRx4.

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


_The training code is not fully cleaned up; for academia purpose, please request training from [here](https://goo.gl/forms/kq8Qxu2t3yrHGGq62) by providing basic usage information._

### Cite us
```
@inproceedings{guo2017deep,
  title={Deep wavelet prediction for image super-resolution},
  author={Guo, Tiantong and Mousavi, Hojjat Seyed and Vu, Tiep Huu and Monga, Vishal},
  booktitle={The IEEE Conference on Computer Vision and Pattern Recognition (CVPR) Workshops},
  year={2017}
}
```
```
@inproceedings{timofte2017ntire,
  title={Ntire 2017 challenge on single image super-resolution: Methods and results},
  author={Timofte, Radu and Agustsson, Eirikur and Van Gool, Luc and Yang, Ming-Hsuan and Zhang, Lei and Lim, Bee and Son, Sanghyun and Kim, Heewon and Nah, Seungjun and Lee, Kyoung Mu and others},
  booktitle={Computer Vision and Pattern Recognition Workshops (CVPRW), 2017 IEEE Conference on},
  pages={1110--1121},
  year={2017},
  organization={IEEE}
}
```
____________
Tiantong@iPAL2017, tong.renly@gmail.com
