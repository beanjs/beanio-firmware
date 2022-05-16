#! /bin/bash

gcc ./wm_tool.c -lpthread -o ./wm_tool

./wm_tool -c /dev/ttyUSB0 -dl ./beanio_w801.fls -rs rts
