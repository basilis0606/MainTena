import 'Notification.dart' as notif;

class Expense {
  double amount;
  DateTime date;
  String currency;
  notif.Notification notification;

  Expense(
      {required this.amount,
      required this.date,
      required this.currency,
      required this.notification});
}
