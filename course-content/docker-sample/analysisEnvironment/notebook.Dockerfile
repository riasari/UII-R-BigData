FROM jupyter/datascience-notebook:ebb42274ac29
MAINTAINER geoHeil <georg.heiler@t-mobile.at>

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt
