# Pyspark Jupyter Notebook with GraphFrames
Docker container running a Jupyter notebook with pyspark and graphframes.
I found that connecting [GraphFrames](https://github.com/graphframes/graphframes) with [pyspark](http://spark.apache.org/) inside a Jupyter notebook is very difficult. This Dockerfile is one way I found to get it to work. It is based on `jupyter/pyspark-notebook`.
Special thanks to [@mdumke](https://github.com/mdumke)

---
```
python 3.11
spark 3.5.0
graphframes 0.8.3
Scala 2.12
```

Build the image and take note of the `id` to run the container. Be sure to forward port `8888` when starting it:

```bash
docker build .
docker run -t --rm -p 8888:8888 <image-id>
```

to see the docker id do:
```bash
docker image ls
```

Note that `jupyter/pyspark-notebook` always takes the last version of spark available. Until 05/06/2024 the version was 3.5.0 which was compatible with scala 2.12.
If it changed check the latest version spark which scala version it supports and update the DockerFile. 
