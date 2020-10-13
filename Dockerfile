FROM ubuntu:latest

RUN apt-get update && apt-get install -y sudo wget vim curl gawk make gcc

RUN wget https://repo.continuum.io/archive/Anaconda3-2019.03-Linux-x86_64.sh && \
    sh Anaconda3-2019.03-Linux-x86_64.sh -b  && \
    rm -f Anaconda3-2019.03-Linux-x86_64.sh && \
    sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -  && \
    sudo apt-get install -y nodejs

ENV PATH $PATH:/root/anaconda3/bin

RUN pip install --upgrade pip
RUN pip install pandas_datareader
RUN pip install mplfinance
RUN pip install japanize-matplotlib

RUN wget --quiet http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz -O ta-lib-0.4.0-src.tar.gz && \
    tar xvf ta-lib-0.4.0-src.tar.gz && \
    cd ta-lib/ && \
    ./configure --prefix=/usr && \
    make && \
    sudo make install && \
    cd .. && \
    pip install TA-Lib && \
    rm -R ta-lib ta-lib-0.4.0-src.tar.gz

RUN mkdir /workspace

CMD ["jupyter-lab", "--ip=0.0.0.0","--port=8888" ,"--no-browser", "--allow-root", "--LabApp.token=''"]