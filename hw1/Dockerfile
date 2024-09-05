FROM rocker/verse
RUN apt update && apt install -y \
    man \
    man-db \
    manpages \
    && rm -rf /var/lib/apt/lists/*
RUN yes | unminimize
RUN R -e "install.packages('ggplot2')"
CMD ["/init"]
