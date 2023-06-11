import 'Post.dart';

class News extends Post {
  News(String title, String text) : super(title, text);

  List<News> getSimilar() {
    // Fetch similar news from a data source
    throw UnimplementedError();
  }
}
