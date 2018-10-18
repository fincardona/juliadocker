FROM continuumio/miniconda3

MAINTAINER Federico Incardona <federico.incardona@unimi.it>

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y \
    apt-utils \
    nano \
    vim \
    g++ \
    gcc \
    gfortran \
    git \
    cmake \
    make \
    tar \
    gettext \
    libcairo2
RUN conda install \
    ipython \
    astropy \
    click \
    matplotlib \
    mpi4py \
    numba \
    numpy \
    pytest \
    scipy 
RUN pip install --upgrade pip && \
    pip install \
    Cython \
    healpy \
    quaternionarray
RUN cd /home/ && \       
    wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.1-linux-x86_64.tar.gz && \
    tar -xvzf julia-1.0.1-linux-x86_64.tar.gz && \
    rm julia-1.0.1-linux-x86_64.tar.gz 
CMD /home/julia-1.0.1/bin/julia
