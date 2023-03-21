import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repositiry, DataSource
  bool initialLoading = true;
  List<VideoPost> videos = [];
  Future<void> loadNextPage() async {
    // await Future.delayed(Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    videos.addAll(newVideos);
    initialLoading = false;
    //todo:cargar videos

    notifyListeners();
  }
}
