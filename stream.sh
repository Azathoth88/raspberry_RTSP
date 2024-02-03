#!/bin/bash
#libcamera-vid -t 0 --inline --width 1920 --height 1080 --framerate 15 --vflip -o - | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/stream}' :demux=h264
#libcamera-vid -t 0 --inline --width 4608 --height 2592 --framerate 14 --vflip -o - | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/stream}' :demux=h264
#libcamera-vid -t 0 --inline --width 2304 --height 1296 --framerate 56 --vflip -o - | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/stream}' :demux=h264
libcamera-vid -t 0 --inline --width 1536 --height 864 --framerate 120 --vflip -o - | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/stream}' :demux=h264
