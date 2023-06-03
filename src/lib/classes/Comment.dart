class Comment {
  String content;

  Comment(this.content);

  void editComment(String newContent) {
    content = newContent;
  }

  void showComment() {
    print(content);
  }
}
