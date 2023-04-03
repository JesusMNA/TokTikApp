import 'package:tok_tik_app/domain/entities/video_post.dart';

abstract class VideoPostDatasource {
  Future<List<VideoPost>> getFavouriteVideosByUser(String userID);
  Future<List<VideoPost>> getTrendingVideosByPAge(int page);
}
