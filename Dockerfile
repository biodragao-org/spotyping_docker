FROM abhi18av/biodragao_base
MAINTAINER Abhinav Sharma (@abhi18av)

#########
### commands
#########

RUN conda install blast -y
#RUN conda install -c r r-gdata -y

RUN git clone https://github.com/xiaeryu/SpoTyping-2.0 && cd SpoTyping-2.0/

WORKDIR /SpoTyping-2.0/SpoTyping-v2.0-commandLine/

CMD ["python2.7", "SpoTyping.py"]



