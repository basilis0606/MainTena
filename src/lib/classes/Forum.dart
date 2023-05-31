class Forum {
  String name;
  List<String> categories;
  List<Post> posts;

  Forum(this.name, this.categories, this.posts);

  void createPost(String title, String content) {
    // Create a new post object
    Post newPost = Post(title, content);

    // Add the post to the list of posts
    posts.add(newPost);
  }

  void displayPosts() {
    for (int i = 0; i < posts.length; i++) {
      print("Post ${i + 1}:");
      print("Title: ${posts[i].title}");
      print("Content: ${posts[i].content}");
      print("----------------------");
    }
  }
}

class Post {
  String title;
  String content;

  Post(this.title, this.content);
}

void main() {
  // Creating a forum object
  Forum myForum = Forum("My Forum", ["General", "News"], []);

  // Creating some posts
  myForum.createPost("First Post", "This is the content of the first post.");
  myForum.createPost("Second Post", "This is the content of the second post.");

  // Displaying all posts
  myForum.displayPosts();
}