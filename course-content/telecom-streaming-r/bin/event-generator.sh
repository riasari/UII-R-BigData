#!/bin/sh
set -o nounset
set -o errexit
set -o pipefail

export event_schema_file="stream/event-schema-generator.parquet"
export input_dir="stream/input"
export kafka_brokers="$(hostname):9092"
export kafka_topic="events"
export checkpoint_dir="stream/checkpoint-generator"

###########################
# you do not need to run this / I just have multiple versions of spark available
#export FOO=${PATH}
#export WORDTOREMOVE='/Users/geoheil/software/spark/bin'
#export PATH=${FOO//$WORDTOREMOVE/}
###########################

rm -r "$checkpoint_dir"
rm -r "$input_dir"
rm -r "$event_schema_file"
mkdir -p "$input_dir"
cp "telecom-streaming/sampler/target/event_schema.parquet" "$event_schema_file"
ls "$input_dir"/../

export jar_file="telecom-streaming/generator/target/generator-1.1.0-SNAPSHOT.jar"

spark-2.4.1-bin-without-hadoop-scala-2.12/bin/spark-submit \
--name "event_generator" \
--master 'local[4]' \
--conf spark.driver.memory=5g \
--class com.github.tashoyan.telecom.generator.EventGeneratorMain \
"$jar_file" \
--schema-file "$event_schema_file" \
--input-dir "$input_dir" \
--kafka-brokers "$kafka_brokers" \
--kafka-topic "$kafka_topic" \
--checkpoint-dir "$checkpoint_dir"