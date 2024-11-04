# VINS-Fusion 视觉惯性里程计算法

VINS-Fusion 是一种通用的基于优化的多传感器全局位姿估计框架，是 VINS-Mono 的扩展，支持多种视觉惯性传感器类型（单目摄像机+ IMU，双目摄像机+ IMU，或纯双目摄像机）以及全局传感器(如GPS，气压计和磁力计等)的输入。

- 论文链接：https://arxiv.org/pdf/1901.03642.pdf
- 源项目地址：https://github.com/HKUST-Aerial-Robotics/VINS-Fusio

## 我们的更改：
- Realsense 系列相机必须在开始读取后才开始调整曝光，会影响前后特征点识别，因此扔掉刚开始的 `THROW_OUT_MAX_VALUE` 张图片(默认60张，即大约时长2s左右的图像)。