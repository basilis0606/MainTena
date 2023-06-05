class Notification {
  double mileage;
  DateTime date;
  double estimatedCost;
  String? description;
  bool isDone = false;
  bool isIgnored = false;

  Notification(
      {required this.mileage,
      required this.date,
      required this.estimatedCost,
      this.description});

  void complete() {
    isDone = true;
  }

  void ignore() {
    isIgnored = true;
  }
}
