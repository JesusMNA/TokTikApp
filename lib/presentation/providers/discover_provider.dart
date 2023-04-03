import 'package:flutter/material.dart';
import 'package:tok_tik_app/domain/repositories/video_posts_repository.dart';

import '../../domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videsoRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videsoRepository,
  });

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList();

    final newVideos = await videsoRepository.getTrendingVideosByPAge(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
