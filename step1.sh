#!/usr/bin/env bash
# Step 1 - Simulate Factory IoT data stream:
while true; do 
cat ~/predictive-maintenance/sample_dataset/mqtt.json | while read line; do echo $line | sed 's/{/{"timestamp":"'$(date +%s)'",/g' | /opt/mapr/kafka/kafka-*/bin/kafka-console-producer.sh --topic /apps/factory:mqtt --broker-list this.will.be.ignored:9092; sleep 1; done
done
