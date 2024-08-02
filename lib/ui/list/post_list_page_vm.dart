import 'package:blog/core/utils.dart';
import 'package:blog/data/post.dart';
import 'package:blog/data/post_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 창고
class PostListVM extends StateNotifier<List<Post>?>{
  PostListVM(super.state);

  final mContext = navigatorKey.currentContext;

  Future<void> notifyInit() async {
    List<Post> posts = await PostRepository().findAll();
    state = posts;
  }

  Future<void> notifyWrite(String title, String content) async {
    // 1. 글쓰기 통신 요청
    await PostRepository().write(title, content);
    // 2. 정상이면 화면 이동 Navigator Pop (Context 가 필요)
    Navigator.pop(mContext!);
  }

}

// 창고 관리자
final postListProvider = StateNotifierProvider<PostListVM, List<Post>?>((ref) {
  return PostListVM(null)..notifyInit();
});
