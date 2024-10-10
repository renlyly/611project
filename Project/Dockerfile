FROM rocker/verse:latest
RUN apt update && apt install -y \
    && rm -rf /var/lib/apt/lists/*
RUN apt update && apt install git
RUN add-apt-repository ppa:kelleyk/emacs && \
    apt-get update && \
    apt-get install -y \
    emacs \
    libx11-6 \
    && rm -rf /var/lib/apt/lists/*
RUN emacs --version
RUN git --version
RUN apt-get update && apt-get install -y python3 python3-pip
RUN R -e "install.packages(c('ggplot2', 'rmarkdown', 'tidyverse'))"

CMD ["tail", "-f", "/dev/null"]
