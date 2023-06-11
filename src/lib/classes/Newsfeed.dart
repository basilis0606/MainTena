import 'Newsletter.dart';
import 'News.dart';
import 'dart:math';
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

  List<News> filter(String searchString) {
    List<News> filteredNews = [];

    for (var n in news) {
      if (n.title.contains(searchString) || n.text.contains(searchString)) {
        filteredNews.add(n);
      }
    }

    return filteredNews;
  }

  void findNews(int quantity) {
    List<News> allNews = [];

    // Collect the last 100 news from each newsletter
    for (var newsletter in newsletters) {
      int startIndex = max(0, newsletter.news.length - 100);
      allNews.addAll(newsletter.news.sublist(startIndex));
    }

    // Shuffle the news randomly
    allNews.shuffle();

    // Return the first n news
    news.addAll(allNews.take(quantity));
  }
}
