
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayPauseOverlay extends StatefulWidget {

  VideoPlayerController controller;
  PlayPauseOverlay({this.controller});
  @override
  _PlayPauseOverlayState createState() => _PlayPauseOverlayState();
}

class _PlayPauseOverlayState extends State<PlayPauseOverlay> {

  bool playPause = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 50),
          reverseDuration: Duration(milliseconds: 200),
          child: widget.controller.value.isPlaying
              ? SizedBox.shrink()
              : Container(
            color: Colors.black26,
            child: Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 100.0,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {

            if (playPause==false) {
              widget.controller.play();
              print('played1'+playPause.toString());
              playPause =true;
              print('played2'+playPause.toString());
            } else if(playPause==true){
              widget.controller.pause();
              print('paused1'+playPause.toString());
              playPause = false;
              print('paused2'+playPause.toString());
            }
          },
        ),
      ],
    );
  }
}



