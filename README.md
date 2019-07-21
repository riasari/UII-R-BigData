# UII R and Big Data

Course content for the R and Big Data class 2019 at UII.

- course R and Big Data
	- [course introduction](https://docs.google.com/presentation/d/1Janow5MBlnGeDYByCfscHlnpRBeZad_F7ZpRWOiCjRM/edit?usp=sharing)
	- [basics](https://docs.google.com/presentation/d/1OVm1juqVPJbD7y_Ge3jyowmomvgMASbO1wT-caJrMrA/edit?usp=sharing)
	- [recap tidyverse](course-content/recap-3tidyverse_intro.Rmd)
	- [R web scraping](course-content/r-webscraping.Rmd)
	- [R web scraping advanced](course-content/r-webscraping-advanced.Rmd)
	- [introduction to distributed computing (hadoop & spark)](https://docs.google.com/presentation/d/1jDdSITm5Rlf3Dnb1FpFlY84MG9i0hWJNRwrrlAlBBT0/edit?usp=sharing)
	- connect R and spark (quickstart in the cloud)
	  - [databricks community edition](https://community.cloud.databricks.com)
	  - import sample notebook [https://docs.databricks.com/_static/notebooks/sparklyr.html](https://docs.databricks.com/_static/notebooks/sparklyr.html)
	- [connecting R and spark](course-content/0_connectingRandSpark.Rmd)
	- [practical intro to dataframes](course-content/1_dataframes_intro.Rmd)
	  - [lab 1.1](course-content/1_lab1.Rmd)
	  - [lab 1.2](course-content/1_lab2.Rmd)
	  - [lab 1.3](course-content/1_lab3.Rmd)
	- [partitioning, UDF and joins](course-content/2_dataframes_partition_join_udf.Rmd)
	- extensions (not part, only mentioned briefly)
	  - [scala UDF](course-content/3_scala_udf.Rmd)
	- machine learning
	  - [brief recap machine learning methods](todo)
	  - [distributed ML, scoring, governance](course-content/4_machine_learning.Rmd)
	  - https://github.com/harryprince/awesome-sparklyr
	  - [anomaly detection using h2o](course-content/4.1_anomaly_detection.Rmd)
	- [streaming and shiny](course-content/6_streaming_shiny.Rmd)
	- [streaming advanced (sliding windows, joins)](course-content/7_streaming_advanced.Rmd)
	- further (advanced) content if time permits
	  - [applications geospatial](course-content/5_applications_geospatial.Rmd)
	  - [graph analytics](course-content/5.2_graph_analytics.Rmd)
	  - [xgboost](course-content/5.3_xgbboost.Rmd)
	- **capstone project**
	  - setting up a database in docker (postgresql)
	  - take a dataset of your choice. Download it and clean it. Perform an exploratory analysis of the data using sparklyR.
	  - store the result using sparklyR in the database.
	  - connecting again with spark to the database and read the cleaned data
	  - calculate a ML model (regression, classification, anomaly detection, clustering)
	  - perform parameter tuning, compare different ml models and preprocessing pipelines
	  - store each parameter set and result in mlFlow
	  - write a report of your findings
	
- [faculty talk](https://docs.google.com/presentation/d/1RBh-fe3DnwvgAzZ4xiovzKrrn811abraUIlJlX3TFms/edit?usp=sharing)

