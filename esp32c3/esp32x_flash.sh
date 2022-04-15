#! /bin/bash

python3 ./esptool.py \
        -p /dev/ttyUSB1 \
        -b 460800 \
        --before default_reset \
        --after hard_reset \
        --chip esp32  \
        write_flash \
        --flash_mode dio \
        --flash_size detect \
        --flash_freq 40m \
        0x1000 ./bootloader.bin \
        0x8000 ./partition-table.bin \
        0x10000 ./beanio_esp32x.bin