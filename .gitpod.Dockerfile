FROM gitpod/workspace-full


USER gitpod

RUN sudo apt-get update -q && \
    sudo apt-get install -yq r-base && \
    R -e "install.packages('devtools')" && \
    R -e "install.packages('rfishbase')" && \
    R -e "install.packages('taxizedb')" && \
    R -e "install.packages('readxl')" && \
    R -e "install.packages('hoardr')" && \
    R -e "install.packages('utils')"
