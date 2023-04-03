import 'package:tok_tik_app/domain/datasources/video_posts_datasource.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';
import 'package:tok_tik_app/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({
    required this.videosDatasource,
  });

  @override
  Future<List<VideoPost>> getFavouriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPAge(int page) {
    return videosDatasource.getTrendingVideosByPAge(page);
  }
}
