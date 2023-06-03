class Review {
  double rating;
  String comment;

  Review(this.rating, this.comment);

  editReview(double rating, String comment) {
    this.rating = rating;
    this.comment = comment;
  }
}
