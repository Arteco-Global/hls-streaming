# hls-streaming
hls-streaming

run all.bat in order to start streaming video

ffmpeg -v verbose -i "rtsp://username:password@camIP:camPORT/cam/realmonitor?channel=1&subtype=0&unicast=true&proto=Onvif" ^
	-vcodec copy ^
	-acodec copy ^
	-movflags frag_keyframe+empty_moov ^
	-hls_time 5 ^
	-hls_list_size 4 ^
	-hls_wrap 40 ^
    -hls_delete_threshold 1 ^
    -hls_flags delete_segments ^
    -hls_start_number_source datetime ^
    -preset superfast ^
    -start_number 10  "C:\Program Files\ARTECO-SERVER\http\htdocs\hls\2\stream.m3u8" ^
