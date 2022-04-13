#! /bin/bash

python3 ./esptool.py \
  --port /dev/ttyUSB1 \
  --baud 115200 \
  erase_flash 

python3 ./esptool.py \
  --port /dev/ttyUSB1 \
  --baud 460800 \
  write_flash \
  --flash_freq 80m \
  --flash_mode qio \
  --flash_size 1MB \
  0x0000 "./boot_v1.6.bin" \
  0x1000 "./beanio_esp8266_user1.bin" \
  0xFC000  "./esp_init_data_default.bin" \
  0xFE000 "./blank.bin" 
  



