FROM debian:buster-slim

RUN apt update && \
    apt install -yq pandoc texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra pandoc-citeproc

WORKDIR /data/src

ENTRYPOINT ["pandoc", "--filter", "pandoc-citeproc", "--from", "markdown+yaml_metadata_block+raw_html", "--to=latex","--output", "/data/build/report.pdf", "--template=/data/eisvogel/eisvogel.latex", "--table-of-contents","--toc-depth", "6", "--top-level-division=chapter", "--highlight=tango", "/data/src/index.md"]