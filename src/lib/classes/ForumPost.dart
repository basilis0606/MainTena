class ForumPost {
  String title;
  String content;
  int likes, dislikes;

  ForumPost(this.title, this.content);

  void like(){
    likes++;}
  void dislike(){
    dislikes++;
  }