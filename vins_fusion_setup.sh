#!/usr/bin/env bash
# set -x
# set -e

# 获取项目根路径
PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd )"
# vins_fusion
VINS_FUSION_DIR="${PROJECT_DIR}/src/vins_fusion"

if [ ! -d "${VINS_FUSION_DIR}" ]; then
    echo "Downloading Vins_Fusion..."
    git clone https://gitee.com/Derkai52/vins_fusion.git "${VINS_FUSION_DIR}"
    # git clone https://github.com/emNavi/vins_fusion.git "${VINS_FUSION_DIR}"
else
    echo "Vins-Fusion is already installed."
fi

catkin_make

popd >/dev/null

set +x
echo ""
echo "************************************"
echo "Vins-Fusion setup completed successfully!"
echo "************************************"