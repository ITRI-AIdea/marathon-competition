FROM nvaitc/ai-lab:19.08

USER root
RUN sed -i 's/mirror.nus.edu.sg/ftp.ubuntu-tw.net/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y vim
RUN pip install torch==1.2.0 torchvision==0.4.0 -f https://download.pytorch.org/whl/cu100/torch_stable.html
RUN pip install pycocotools

COPY mnist-sk.py /home/jovyan
COPY mnist.py /home/jovyan
COPY retinanet.tgz /home/jovyan
