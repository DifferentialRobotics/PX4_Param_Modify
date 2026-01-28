<img src="images/nus_logo.png" alt="nus logo" align="right" height="80" />

# PX4_Param_Modify

## 概述
该教程为命令行方式修改PX4飞控PID控制参数教程，给出的控制参数适用于带球笼桨保的 **J30（非凸-α）** 无人机，这套参数也同时适用于去掉桨保的J30。\
球笼桨保使用说明书详见：[球笼桨保说明书](球笼桨保说明书.pdf)。 \
需要修改的参数如下表所示：
<div align="center">
<table>
<thead>
<tr>
<th style="text-align:center">参数名称</th>
<th style="text-align:center">参数功能</th>
<th style="text-align:center">参数值</th>
</tr>
</thead>
<tbody>
<tr><td style="text-align:center">MC_ROLLRATE_K</td><td style="text-align:center">横滚角速度控制K项增益</td><td style="text-align:center">0.9</td></tr>
<tr><td style="text-align:center">MC_ROLLRATE_P</td><td style="text-align:center">横滚角速度控制P项增益</td><td style="text-align:center">0.08</td></tr>
<tr><td style="text-align:center">MC_ROLLRATE_I</td><td style="text-align:center">横滚角速度控制I项增益</td><td style="text-align:center">0.1</td></tr>
<tr><td style="text-align:center">MC_ROLLRATE_D</td><td style="text-align:center">横滚角速度控制D项增益</td><td style="text-align:center">0.0012</td></tr>
<tr><td style="text-align:center">MC_PITCHRATE_K</td><td style="text-align:center">俯仰角速度控制K项增益</td><td style="text-align:center">0.9</td></tr>
<tr><td style="text-align:center">MC_PITCHRATE_P</td><td style="text-align:center">俯仰角速度控制P项增益</td><td style="text-align:center">0.08</td></tr>
<tr><td style="text-align:center">MC_PITCHRATE_I</td><td style="text-align:center">俯仰角速度控制I项增益</td><td style="text-align:center">0.1</td></tr>
<tr><td style="text-align:center">MC_PITCHRATE_D</td><td style="text-align:center">俯仰角速度控制D项增益</td><td style="text-align:center">0.0012</td></tr>
<tr><td style="text-align:center">MC_YAW_P</td><td style="text-align:center">偏航角速度控制P项增益</td><td style="text-align:center">0.25</td></tr>
<tr><td style="text-align:center">MC_YAWRATE_K</td><td style="text-align:center">偏航角速度控制K项增益</td><td style="text-align:center">0.8</td></tr>
<tr><td style="text-align:center">MC_YAWRATE_I</td><td style="text-align:center">偏航角速度控制I项增益</td><td style="text-align:center">0.05</td></tr>
<tr><td style="text-align:center">MC_YAWRATE_D</td><td style="text-align:center">偏航角速度控制D项增益</td><td style="text-align:center">0</td></tr>
<tr><td style="text-align:center">IMU_GYRO_NF0_BW</td><td style="text-align:center">角速度陷波滤波器0的带宽</td><td style="text-align:center">5</td></tr>
<tr><td style="text-align:center">IMU_GYRO_NF0_FRQ</td><td style="text-align:center">角速度陷波滤波器0的频率</td><td style="text-align:center">21</td></tr>
<tr><td style="text-align:center">IMU_GYRO_NF1_BW</td><td style="text-align:center">角速度陷波滤波器1的带宽</td><td style="text-align:center">5</td></tr>
<tr><td style="text-align:center">IMU_GYRO_NF1_FRQ</td><td style="text-align:center">角速度陷波滤波器1的频率</td><td style="text-align:center">28</td></tr>
<tr><td style="text-align:center">IMU_DGYRO_CUTOFF</td><td style="text-align:center">角速度给D项用的低通滤波的截止频率</td><td style="text-align:center">30</td></tr>
<tr><td style="text-align:center">IMU_GYRO_CUTOFF</td><td style="text-align:center">角速度低通滤波的截止频率</td><td style="text-align:center">35</td></tr>
<tr><td style="text-align:center">IMU_GYRO_DNF_BW</td><td style="text-align:center">IMU角速度动态陷波器带宽</td><td style="text-align:center">10</td></tr>
<tr><td style="text-align:center">IMU_GYRO_DNF_EN</td><td style="text-align:center">IMU角速度动态陷波器启用模式</td><td style="text-align:center">3</td></tr>
<tr><td style="text-align:center">IMU_GYRO_DNF_MIN</td><td style="text-align:center">IMU角速度动态陷波器最小频率</td><td style="text-align:center">30</td></tr>
</tbody>
</table>
</div>


## 修改步骤

### 1. 启动mavros
```
sudo chmod 777 /dev/tty*
roslaunch mavros px4.launch
```

### 2. 使用一键修改脚本
```
git clone https://github.com/DifferentialRobotics/PX4_Param_Modify.git
cd PX4_Param_Modify
./set_px4_param.sh
```

### 3. 检查雷达盲区是否设置正确
将`flight_modules/faster-lio/config/mid360.yaml`文件中的`blind`参数设置为`0.5`。