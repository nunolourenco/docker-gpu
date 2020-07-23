FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install tensorflow keras

COPY mnist.py /mnist.py

CMD ["python3", "mnist.py"]



 


