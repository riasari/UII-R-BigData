// download https://dumps.wikimedia.org/other/pageviews/2019/2019-03/

val df = spark.read.option("delimiter", " ").csv("/Users/geoheil/Downloads/pagecounts-20160801-000000")

df.withColumnRenamed("_c0", "project").withColumnRenamed("_c1", "article").withColumnRenamed("_c2", "requests").withColumnRenamed("_c3", "bytes_served").write.option("compression", "gzip").parquet("wikimedia_edits.parquet")