FROM ubuntu

ARG SPARK_VERSION=3.0.1
ARG HADOOP_VERSION=3.2

RUN apt-get update -qq \
 && apt-get install -y -qq --no-install-recommends wget openjdk-8-jdk-headless ipython3 vim curl rsync \
 && rm -rf /var/lib/apt/list/*

RUN wget -q https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
 && tar xzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz -C / \
 && rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
 && ln -s /spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} /spark

ENV PYSPARK_DRIVER_PYTHON=ipython3 PYSPARK_PYTHON=python3

WORKDIR /spark
