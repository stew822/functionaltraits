FROM gitpod/workspace-full


USER gitpod

RUN brew install libxext
RUN brew install R
