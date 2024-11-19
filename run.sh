#!/bin/bash
# set -x
# set -e

echo "[START] Vins-Fusion "

# 通过本脚本文件路径来获取 x152b 项目文件根目录
PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd )"

VINS_OUTPUT_DIR="${PROJECT_DIR}/src/autonomous_drone_sdk/global_interface/config/vins_fusion/output"
if [ ! -d "${VINS_OUTPUT_DIR}" ]; then
    mkdir ${VINS_OUTPUT_DIR}
else
    echo "Vins-Fusion output dir is already exit."
fi

source ${PROJECT_DIR}/devel/setup.bash;roslaunch vins swarm_d430_no_rviz.launch  && sleep 1;

