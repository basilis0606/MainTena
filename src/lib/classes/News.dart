import 'dart:core';
class News {
  String title;
  String content;
  DateTime date=DateTime.now();

  News(this.title, this.content) {
    date = DateTime.now();
  }

  List<News> getSimilar() {
    // Fetch similar news from a data source
    // For demonstration purposes, let's return a hardcoded list of similar news
    return [
      News("Similar News 1", "Similar news content 1"),
      News("Similar News 2", "Similar news content 2"),
      News("Similar News 3", "Similar news content 3"),
    ];
  }
}
void main(){}