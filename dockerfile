FROM python:3.8
WORKDIR /apach_airflow_example/airflow
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /apach_airflow_example/airflow


# FROM apache/airflow:2.8.0
# WORKDIR /apach_airflow_example
# USER root
# RUN apt-get update \
#   && apt-get install -y --no-install-recommends \
#          vim \
#   && apt-get autoremove -yqq --purge \
#   && apt-get clean \
#   && rm -rf /var/lib/apt/lists/*
# USER airflow
# COPY . /apach_airflow_example
