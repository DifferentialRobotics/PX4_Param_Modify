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

# 设置 MC_PITCHRATE_D
echo "设置 MC_PITCHRATE_D..."
rosservice call /mavros/param/set "{param_id: 'MC_PITCHRATE_D', value: {integer: 0, real: 0.0012}}"
if [ $? -eq 0 ]; then
    echo "  ✓ MC_PITCHRATE_D 设置成功"
else
    echo "  ✗ MC_PITCHRATE_D 设置失败"
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

echo "参数设置完成！"
