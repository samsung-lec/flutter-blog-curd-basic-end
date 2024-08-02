import 'package:blog/ui/components/custom_appbar.dart';
import 'package:blog/ui/list/components/post_list_body.dart';
import 'package:blog/ui/list/post_list_page_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostListPage extends ConsumerWidget {

  final refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(title: "Post List Page"),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          ref.read(postListProvider.notifier).notifyInit();
        },
        child: PostListBody(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, "/write");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

