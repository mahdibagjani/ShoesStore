
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayPauseOverlay extends StatefulWidget {

  VideoPlayerController controller;
  PlayPauseOverlay({this.controller});
  @override
  _PlayPauseOverlayState createState() => _PlayPauseOverlayState();
}

class _PlayPauseOverlayState extends State<PlayPauseOverlay> {

  static bool PLAY_PAUSE = false;
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

            if (PLAY_PAUSE==false) {
              widget.controller.play();
              print('played1'+PLAY_PAUSE.toString());
              PLAY_PAUSE =true;
              print('played2'+PLAY_PAUSE.toString());
            } else if(PLAY_PAUSE==true){
              widget.controller.pause();
              print('paused1'+PLAY_PAUSE.toString());
              PLAY_PAUSE = false;
              print('paused2'+PLAY_PAUSE.toString());
            }
          },
        ),
      ],
    );
  }
}



