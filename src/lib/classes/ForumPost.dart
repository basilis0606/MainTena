class ForumPost {
  String title;
  String content;
  int likes=0;
  int dislikes=0;

  ForumPost(this.title, this.content) {
    likes = 0;
    dislikes = 0;
  }

  void like() {
    likes++;
  }

  void dislike() {
    dislikes++;
  }
}
/*
void main() {
  ForumPost myPost = ForumPost("My Title", "My Content");
  myPost.like();
  myPost.dislike();

  print("Likes: ${myPost.likes}");       // Output: Likes: 1
  print("Dislikes: ${myPost.dislikes}"); // Output: Dislikes: 1
}*/
