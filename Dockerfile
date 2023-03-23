FROM rocker/verse:latest

COPY install-osgeo-tiledb.sh /rocker_scripts/install-osgeo-tiledb.sh

ARG NCPUS=1

RUN /rocker_scripts/install-osgeo-tiledb.sh

COPY test-tiledb.R /home/rstudio/test-tiledb.R