import 'package:flutter/material.dart';
import 'package:rus_car/model/cars.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Video extends StatelessWidget {
  final int id;
  const Video({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = YoutubePlayerController();
    _controller.loadVideoById(videoId: YoutubePlayerController.convertUrlToId(carsList[id].video).toString());
    return YoutubePlayer(
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}
