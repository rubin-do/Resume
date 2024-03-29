FROM ubuntu:20.04

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install --yes --no-install-recommends \ 
      texlive-fonts-recommended \
      tex-common \
      texlive-latex-extra \
      texlive-fonts-extra \
      dvipng \
      texlive-latex-recommended \
      texlive-base \
      texlive-pictures \
      texlive-lang-cyrillic \
      texlive-science \
      texlive-plain-generic \
      cm-super 

COPY resume.tex /resume/resume.tex
COPY resume.cls /resume/resume.cls
COPY makeCV.sh /resume/makeCV.sh

WORKDIR /resume

RUN /resume/makeCV.sh
