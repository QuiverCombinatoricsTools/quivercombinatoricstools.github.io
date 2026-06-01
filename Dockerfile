FROM sagemath/sagemath:latest
RUN apt-get update && apt-get install -y git graphviz
RUN sage -pip install jupyterlab
RUN sage -pip install git+https://github.com/QuiverTools/QuiverTools.git
RUN sage -pip install git+https://github.com/QuiverCombinatoricsTools/QuiverCombinatoricsTools.git
RUN sage -pip install dot2tex