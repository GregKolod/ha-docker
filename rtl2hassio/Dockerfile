FROM hertzg/rtl_433:latest

ENV LANG C.UTF-8


WORKDIR /data

RUN apk add --no-cache python3 && \
    apk add --no-cache py-pip

RUN pip3 install paho-mqtt

#
# Blacklist kernel modules for RTL devices
#
COPY rtl.blacklist.conf /etc/modprobe.d/rtl.blacklist.conf

#
# Copy scripts, make executable
#
COPY entry.sh rtl_433_mqtt_hass.py /scripts/
RUN chmod +x /scripts/entry.sh
RUN chmod +x /scripts/rtl_433_mqtt_hass.py
#
# Execute entry script
#
ENTRYPOINT [ "/scripts/entry.sh" ]