FROM sagemath/sagemath:latest
USER root
RUN apt-get update && apt-get install -y git graphviz && rm -rf /var/lib/apt/lists/*
USER sage
RUN sage -pip install jupyterlab
RUN sage -pip install git+https://github.com/QuiverTools/QuiverTools.git
RUN sage -pip install git+https://github.com/QuiverCombinatoricsTools/QuiverCombinatoricsTools.git
RUN sage -pip install dot2tex