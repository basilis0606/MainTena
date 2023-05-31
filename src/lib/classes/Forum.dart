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

  void read(ForumPost post) {
    // Perform actions to read the post
    // For example, you can display the post's content
    print("Reading Post:");
    print("Title: ${post.title}");
    print("Content: ${post.content}");
    print("----------------------");
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