import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerWidget({required this.videoUrl});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
      _isPlaying = !_isPlaying;
    });
  }

  void _toggleFullScreen() {
    setState(() {
      _controller.value.isPlaying ? _controller.pause() : _controller.play();
    });
    _controller.value.isPlaying ? _controller.pause() : _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: GestureDetector(
                    onTap: _togglePlayPause,
                    child: VideoPlayer(_controller),
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          if (_isPlaying == false)
            Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 48.0,
                ),
                onPressed: _togglePlayPause,
              ),
            ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              icon: Icon(
                Icons.fullscreen,
                color: Colors.white,
              ),
              onPressed: _toggleFullScreen,
            ),
          ),
        ],
      ),
    );
  }
}
