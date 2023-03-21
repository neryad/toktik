import 'package:toktik/domain/entities/video_post.dart';

import '../../datasource/video_posts_datasource.dart';
import '../../repositories/video_post_repositories.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoPostdataSource;

  VideoPostsRepositoryImpl({required this.videoPostdataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostdataSource.getTrendingVideosByPage(page);
  }
}
