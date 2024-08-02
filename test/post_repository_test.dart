
import 'package:blog/data/post_repository.dart';

void main() async {
  await deleteById_test();
}

Future<void> deleteById_test() async {
  await PostRepository().deleteById(22);
}

Future<void> findById_test() async {
  await PostRepository().findById(1);
}