 #!/bin/bash
libcamera-vid -t 0 --inline --width 1920 --height 1080 --framerate 15 -o - | cvlc -vvv stream:///dev/stdin --sout '#transcode{vcodec=h264,vb=2000,acodec=mpga,ab=128,channels=2,samplerate=44100,vfilter=transform{type=vflip}}:rtp{sdp=rtsp://:8554/stream}' :demux=h264
