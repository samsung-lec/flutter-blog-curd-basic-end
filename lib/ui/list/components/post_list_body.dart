import 'package:blog/data/post.dart';
import 'package:blog/ui/detail/post_detail_page.dart';
import 'package:blog/ui/list/post_list_page_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostListBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Post>? models = ref.watch(postListProvider);

    if (models == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: models.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${models[index].id}"),
              title: Text("${models[index].title}"),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostDetailPage(),
                      ));
                },
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(),
        ),
      );
    }
  }
}
