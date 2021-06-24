# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

RUN apt-get update
RUN apt-get install -y build-essential curl file git gawk

RUN pip install kindred snakemake zenodo_get ftputil
RUN python -m spacy download en_core_web_sm
RUN pip install scispacy
RUN pip install https://s3-us-west-2.amazonaws.com/ai2-s2-scispacy/releases/v0.4.0/en_core_sci_sm-0.4.0.tar.gz
RUN pip install SPARQLWrapper mysql-connector matplotlib seaborn nltk tabulate beautifulsoup4 tensorflow ktrain python-twitter bigzenodo
RUN python -m nltk.downloader stopwords
