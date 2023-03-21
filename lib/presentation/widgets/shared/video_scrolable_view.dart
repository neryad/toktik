import 'package:flutter/material.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

import '../../../domain/entities/video_post.dart';
import '../../screens/discover/widgets/videoPlayer/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videPost = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                videoUrl: videPost.videoUrl,
                caption: videPost.caption,
              ),
            ),
            //video paler  y grade
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(
                video: videPost,
              ),
            )
          ],
        );
      },
    );
  }
}
