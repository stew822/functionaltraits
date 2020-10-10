FROM gitpod/workspace-full


USER gitpod

RUN sudo apt-get update -q && \
    sudo apt-get install -yq r-base && \
    sudo R -e "install.packages('devtools')" && \
    sudo R -e "install.packages('rfishbase')" && \
    sudo R -e "install.packages('taxizedb')" && \
    sudo R -e "install.packages('readxl')" && \
    sudo R -e "install.packages('hoardr')" && \
    sudo R -e "install.packages('utils')"
