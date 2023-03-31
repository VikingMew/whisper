FROM vidia/cuda:11.0.3-base-ubuntu20.04
MAINTAINER mew
RUN apt update && apt upgrade && apt install python3.8 python3-pip ffmpeg
RUN python3.8 -m pip install -U pip && pip3.8 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu113 && pip3.8 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
RUN 