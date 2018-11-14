FROM drydock/c7all:master

ADD . /c7golall

RUN /c7golall/install.sh
