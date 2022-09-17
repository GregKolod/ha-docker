#!/bin/sh


rtl_433  $PROTOCOL -C si  -F "mqtt://$MQTT_HOST:$MQTT_PORT, events=$MQTT_TOPIC/events, states=$MQTT_TOPIC/states, devices=$MQTT_TOPIC[/model][/id][/channel:0]"  -M time -M protocol -M level | /scripts/rtl_433_mqtt_hass.py 
