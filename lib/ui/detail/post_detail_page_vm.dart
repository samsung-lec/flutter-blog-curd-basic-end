import 'package:blog/data/post.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 창고
class PostDetailVM extends StateNotifier<Post?>{
  PostDetailVM(super.state);

  Future<void> notifyInit() async {
    // PostRepository().findById(1);
  }
}

// 창고 관리자
final postDetailProvider = StateNotifierProvider<PostDetailVM, Post?>((ref) {
  return PostDetailVM(null)..notifyInit();
});
