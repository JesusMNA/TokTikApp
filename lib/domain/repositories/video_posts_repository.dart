import '../entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getFavouriteVideosByUser(String userID);
  Future<List<VideoPost>> getTrendingVideosByPAge(int page);
}
