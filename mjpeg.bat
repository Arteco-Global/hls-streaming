ffmpeg -v verbose -i "rtsp://admin:admin@10.0.1.12:554/cam/realmonitor?channel=1&subtype=1&unicast=true&proto=Onvif" ^
	
	-movflags frag_keyframe+empty_moov ^
	-hls_time 5 ^
	-hls_list_size 4 ^
	-hls_wrap 40 ^
    -hls_delete_threshold 1 ^
    -hls_flags delete_segments ^
    -hls_start_number_source datetime ^
    -preset superfast ^
    -start_number 10  "C:\Program Files\ARTECO-SERVER\http\htdocs\hls\1\stream.m3u8" ^