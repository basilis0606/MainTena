class Comment {
  String content;

  Comment(this.content);

  void editComment(String newContent) {
    content = newContent;
  }

  void showComment() {
    throw UnimplementedError();
  }

  String getComment() {
    throw UnimplementedError();
  }
}
