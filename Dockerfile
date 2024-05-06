FROM jupyter/pyspark-notebook

USER root

RUN $SPARK_HOME/bin/spark-shell --packages graphframes:graphframes:0.8.3-spark3.5-s_2.12
RUN wget https://repos.spark-packages.org/graphframes/graphframes/0.8.3-spark3.5-s_2.12/graphframes-0.8.3-spark3.5-s_2.12.jar -qO $SPARK_HOME/jars/graphframes.jar

USER $NB_UID

RUN python -m pip install graphframes