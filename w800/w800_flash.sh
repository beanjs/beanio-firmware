#! /bin/bash

gcc ./wm_tool.c -lpthread -o ./wm_tool

./wm_tool -c /dev/ttyUSB0 -dl ./beanio_w800.fls -rs rts
