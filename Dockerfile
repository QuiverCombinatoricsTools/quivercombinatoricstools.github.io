FROM sagemath/sagemath:latest
RUN pip install jupyterlab
RUN sage -pip install git+https://github.com/QuiverTools/QuiverTools.git
RUN sage -pip install git+https://github.com/QuiverCombinatoricsTools/QuiverCombinatoricsTools.git
RUN sage --pip install dot2tex
RUN sage --pip install graphviz