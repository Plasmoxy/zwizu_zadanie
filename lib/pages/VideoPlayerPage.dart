import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:zwizu_zadanie/AppTheme.dart';
import 'package:zwizu_zadanie/components/AppBackButton.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({Key? key}) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  Chewie? _playerWidget;
  VideoPlayerController? _vidController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    startVideo();
  }

  Future<void> startVideo() async {
    _vidController = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    await _vidController!.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _vidController!,
      autoPlay: true,
      looping: true,
    );

    setState(() {
      _playerWidget = Chewie(
        controller: _chewieController!,
      );
    });
  }

  @override
  void dispose() {
    _vidController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: AppTheme.black,
        automaticallyImplyLeading: false,
        title: AppBackButton(),
      ),
      body: _playerWidget ?? Text('Loading player...'),
    );
  }
}
