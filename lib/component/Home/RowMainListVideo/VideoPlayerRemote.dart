import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'PlayPauseOverlay.dart';

class VideoPlayerRemote extends StatefulWidget {
  final String url; //here declared
  VideoPlayerRemote({this.url}); //here asked
  @override
  _VideoPlayerRemoteState createState() => _VideoPlayerRemoteState();
}

class _VideoPlayerRemoteState extends State<VideoPlayerRemote> {
  VideoPlayerController _controller;
    var isVisible=true;
  @override
  void initState() {
    //super.initState();
    _controller = VideoPlayerController.network(
      widget
          .url, //to access its parent class constructor or variable  //here we got it
    )..initialize().then((value) => {setState(() {})});

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true); //loop through video
    _controller.initialize(); //initialize the VideoPlayer
  }

  @override
  void dispose() {
    _controller.dispose(); //dispose the VideoPlayer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: VisibilityDetector(
          key: Key("unique key"),
          onVisibilityChanged: (VisibilityInfo info) {
            if (info.visibleFraction != 0.0 && isVisible == true) {
           print("${info.visibleFraction} of my video  is visible");
              _controller.play();
              isVisible = false;
            } else if (info.visibleFraction < 0.25) {
              print("cancel");
              _controller.pause();
              isVisible = true;
            }
          },
          child: Column(
            children: <Widget>[
              Container(padding: const EdgeInsets.only(top: 20.0)),
              Container(
                padding: const EdgeInsets.all(20),
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      VideoPlayer(_controller),
                      PlayPauseOverlay(controller: _controller),
                      //VideoProgressIndicator(_controller, allowScrubbing: true),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
