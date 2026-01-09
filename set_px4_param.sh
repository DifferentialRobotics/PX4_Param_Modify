#!/bin/bash

# PX4参数设置脚本
# 用于设置飞行控制器的相关参数

echo "开始设置PX4参数..."

# 设置 MC_ROLLRATE_D
echo "设置 MC_ROLLRATE_D..."
rosservice call /mavros/param/set "{param_id: 'MC_ROLLRATE_D', value: {integer: 0, real: 0.0012}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_ROLLRATE_D 设置成功"
else
    echo "  ✗ MC_ROLLRATE_D 设置失败"
fi

# 设置 MC_ROLLRATE_I
echo "设置 MC_ROLLRATE_I..."
rosservice call /mavros/param/set "{param_id: 'MC_ROLLRATE_I', value: {integer: 0, real: 0.1}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_ROLLRATE_I 设置成功"
else
    echo "  ✗ MC_ROLLRATE_I 设置失败"
fi

# 设置 MC_PITCHRATE_D
echo "设置 MC_PITCHRATE_D..."
rosservice call /mavros/param/set "{param_id: 'MC_PITCHRATE_D', value: {integer: 0, real: 0.0012}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_PITCHRATE_D 设置成功"
else
    echo "  ✗ MC_PITCHRATE_D 设置失败"
fi

# 设置 MC_PITCHRATE_I
echo "设置 MC_PITCHRATE_I..."
rosservice call /mavros/param/set "{param_id: 'MC_PITCHRATE_I', value: {integer: 0, real: 0.1}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_PITCHRATE_I 设置成功"
else
    echo "  ✗ MC_PITCHRATE_I 设置失败"
fi

# 设置 MC_PITCHRATE_K
echo "设置 MC_PITCHRATE_K..."
rosservice call /mavros/param/set "{param_id: 'MC_PITCHRATE_K', value: {integer: 0, real: 0.9}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_PITCHRATE_K 设置成功"
else
    echo "  ✗ MC_PITCHRATE_K 设置失败"
fi

# 设置 MC_PITCHRATE_P
echo "设置 MC_PITCHRATE_P..."
rosservice call /mavros/param/set "{param_id: 'MC_PITCHRATE_P', value: {integer: 0, real: 0.08}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_PITCHRATE_P 设置成功"
else
    echo "  ✗ MC_PITCHRATE_P 设置失败"
fi

# 设置 MC_YAW_P
echo "设置 MC_YAW_P..."
rosservice call /mavros/param/set "{param_id: 'MC_YAW_P', value: {integer: 0, real: 0.25}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_YAW_P 设置成功"
else
    echo "  ✗ MC_YAW_P 设置失败"
fi

# 设置 MC_YAWRATE_K
echo "设置 MC_YAWRATE_K..."
rosservice call /mavros/param/set "{param_id: 'MC_YAWRATE_K', value: {integer: 0, real: 0.8}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_YAWRATE_K 设置成功"
else
    echo "  ✗ MC_YAWRATE_K 设置失败"
fi

# 设置 MC_YAWRATE_I
echo "设置 MC_YAWRATE_I..."
rosservice call /mavros/param/set "{param_id: 'MC_YAWRATE_I', value: {integer: 0, real: 0.05}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_YAWRATE_I 设置成功"
else
    echo "  ✗ MC_YAWRATE_I 设置失败"
fi

# 设置 MC_YAWRATE_D
echo "设置 MC_YAWRATE_D..."
rosservice call /mavros/param/set "{param_id: 'MC_YAWRATE_D', value: {integer: 0, real: 0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_YAWRATE_D 设置成功"
else
    echo "  ✗ MC_YAWRATE_D 设置失败"
fi

# 设置 IMU_GYRO_NF0_BW
echo "设置 IMU_GYRO_NF0_BW..."
rosservice call /mavros/param/set "{param_id: 'IMU_GYRO_NF0_BW', value: {integer: 0, real: 5.0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ IMU_GYRO_NF0_BW 设置成功"
else
    echo "  ✗ IMU_GYRO_NF0_BW 设置失败"
fi

# 设置 IMU_GYRO_NF0_FRQ
echo "设置 IMU_GYRO_NF0_FRQ..."
rosservice call /mavros/param/set "{param_id: 'IMU_GYRO_NF0_FRQ', value: {integer: 0, real: 21.0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ IMU_GYRO_NF0_FRQ 设置成功"
else
    echo "  ✗ IMU_GYRO_NF0_FRQ 设置失败"
fi

# 设置 IMU_GYRO_NF1_BW
echo "设置 IMU_GYRO_NF1_BW..."
rosservice call /mavros/param/set "{param_id: 'IMU_GYRO_NF1_BW', value: {integer: 0, real: 5.0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ IMU_GYRO_NF1_BW 设置成功"
else
    echo "  ✗ IMU_GYRO_NF1_BW 设置失败"
fi

# 设置 IMU_GYRO_NF1_FRQ
echo "设置 IMU_GYRO_NF1_FRQ..."
rosservice call /mavros/param/set "{param_id: 'IMU_GYRO_NF1_FRQ', value: {integer: 0, real: 28.0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ IMU_GYRO_NF1_FRQ 设置成功"
else
    echo "  ✗ IMU_GYRO_NF1_FRQ 设置失败"
fi

# 设置 IMU_GYRO_CUTOFF
echo "设置 IMU_GYRO_CUTOFF..."
rosservice call /mavros/param/set "{param_id: 'IMU_GYRO_CUTOFF', value: {integer: 0, real: 35.0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ IMU_GYRO_CUTOFF 设置成功"
else
    echo "  ✗ IMU_GYRO_CUTOFF 设置失败"
fi

# 设置 IMU_DGYRO_CUTOFF
echo "设置 IMU_DGYRO_CUTOFF..."
rosservice call /mavros/param/set "{param_id: 'IMU_DGYRO_CUTOFF', value: {integer: 0, real: 30.0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ IMU_DGYRO_CUTOFF 设置成功"
else
    echo "  ✗ IMU_DGYRO_CUTOFF 设置失败"
fi

# 设置 IMU_GYRO_DNF_BW
echo "设置 IMU_GYRO_DNF_BW..."
rosservice call /mavros/param/set "{param_id: 'IMU_GYRO_DNF_BW', value: {integer: 0, real: 10.0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ IMU_GYRO_DNF_BW 设置成功"
else
    echo "  ✗ IMU_GYRO_DNF_BW 设置失败"
fi

# 设置 IMU_GYRO_DNF_EN
echo "设置 IMU_GYRO_DNF_EN..."
rosservice call /mavros/param/set "{param_id: 'IMU_GYRO_DNF_EN', value: {integer: 3, real: 0.0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ IMU_GYRO_DNF_EN 设置成功"
else
    echo "  ✗ IMU_GYRO_DNF_EN 设置失败"
fi

# 设置 IMU_GYRO_DNF_MIN
echo "设置 IMU_GYRO_DNF_MIN..."
rosservice call /mavros/param/set "{param_id: 'IMU_GYRO_DNF_MIN', value: {integer: 0, real: 30.0}}"
if [ $? -eq 0 ]; then
    echo "  ✓ IMU_GYRO_DNF_MIN 设置成功"
else
    echo "  ✗ IMU_GYRO_DNF_MIN 设置失败"
fi
# 重启飞控
echo "重启飞控..."
rosservice call /mavros/cmd/command "{command: 246, confirmation: 0, param1: 1.0, param2: 0.0, param3: 0.0, param4: 0.0, param5: 0.0, param6: 0.0, param7: 0.0}"
if [ $? -eq 0 ]; then
    echo "  ✓ 飞控重启成功"
else
    echo "  ✗ 飞控重启失败"
fi

echo "参数设置完成！"
