import 'Newsletter.dart';
import 'News.dart';
import 'dart:core';

class Newsfeed {
  List<Newsletter> newsletters = [];
  List<News> news = [];

  Newsfeed();

  void addNewsletter(Newsletter newsletter) {
    newsletters.add(newsletter);
  }

  void removeNewsletter(int index) {
    try {
    newsletters.removeAt(index);
  } catch (e) {
    if (e is RangeError) {
      print('Invalid index: $index');
    }
  }
}

  }

  void filter() {
    // Implement your filtering logic here
    // This is just a placeholder
    news = [];
  }

  void findNews() {
    // Implement your news finding logic here
    // This is just a placeholder
    news = [];
  }
}

void main() {
  News news1 = News("Breaking News 1", "Breaking news content 1");
  News news2 = News("Breaking News 2", "Breaking news content 2");

  List<News> newsList = [news1, news2];

  Newsletter newsletter = Newsletter(newsList);

  Newsfeed myNewsfeed = Newsfeed();
  myNewsfeed.addNewsletter(newsletter);

  // Perform filtering
  myNewsfeed.filter();

  // Find specific news articles
  myNewsfeed.findNews();

  // Remove a newsletter
  myNewsfeed.removeNewsletter(0);
}
