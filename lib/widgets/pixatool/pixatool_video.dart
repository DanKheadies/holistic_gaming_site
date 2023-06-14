import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PixaToolVideo extends StatefulWidget {
  final String picUrl;
  final String videoUrl;

  const PixaToolVideo({
    super.key,
    required this.picUrl,
    required this.videoUrl,
  });

  @override
  State<PixaToolVideo> createState() => _PixaToolVideoState();
}

class _PixaToolVideoState extends State<PixaToolVideo> {
  bool hasStarted = false;
  bool isHovering = false;

  late ChewieController videoChewie;
  late Future<void> initializeVideoFuture;
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();

    videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    initializeVideoFuture = videoPlayerController.initialize();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    videoChewie.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // future: Future.delayed(const Duration(seconds: 5), () {
      //   return true;
      // }),
      future: initializeVideoFuture,
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          videoChewie = ChewieController(
            videoPlayerController: videoPlayerController,
          );

          return AspectRatio(
            aspectRatio: videoPlayerController.value.aspectRatio,
            child: hasStarted
                ? Chewie(
                    controller: videoChewie,
                  )
                : Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        widget.picUrl,
                        height: videoPlayerController.value.size.height,
                        width: videoPlayerController.value.size.width,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            hasStarted = true;
                            videoPlayerController.play();
                          });
                        },
                        onHover: (value) {
                          setState(() {
                            isHovering = value;
                          });
                        },
                        child: Container(
                          width: videoPlayerController.value.size.width,
                          height: videoPlayerController.value.size.height,
                          color: isHovering
                              ? Theme.of(context)
                                  .colorScheme
                                  .surface
                                  .withAlpha(69)
                              : Colors.transparent,
                          child: Center(
                            child: isHovering || !hasStarted
                                ? Container(
                                    width: 123,
                                    height: 69,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .surface
                                          .withAlpha(100),
                                    ),
                                    child: Icon(
                                      videoPlayerController.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                                  )
                                : const SizedBox(),
                          ),
                        ),
                      ),
                    ],
                  ),
          );
        } else {
          return Image.asset(
            widget.picUrl,
          );
        }
      }),
    );
  }
}
