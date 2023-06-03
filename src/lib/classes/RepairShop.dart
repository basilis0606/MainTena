import 'package:flutter/material.dart';

import 'Location.dart';
import 'Review.dart';

class RepairShop {
  String name;
  String email;
  String phone;
  String website;
  Location location;
  List<int> services = [];
  double member_discount;
  Map? opening_hours;
  Map? closing_hours;
  List<Review> reviews = [];

  RepairShop(
      this.name,
      this.email,
      this.phone,
      this.website,
      this.location,
      this.services,
      this.member_discount,
      List<TimeOfDay> openingHours,
      List<TimeOfDay> closingHours) {
    assert(openingHours.length == 7);
    assert(closingHours.length == 7);

    this.opening_hours = {
      "Monday": openingHours[0],
      "Tuesday": openingHours[1],
      "Wednesday": openingHours[2],
      "Thursday": openingHours[3],
      "Friday": openingHours[4],
      "Saturday": openingHours[5],
      "Sunday": openingHours[6],
    };

    this.closing_hours = {
      "Monday": closingHours[0],
      "Tuesday": closingHours[1],
      "Wednesday": closingHours[2],
      "Thursday": closingHours[3],
      "Friday": closingHours[4],
      "Saturday": closingHours[5],
      "Sunday": closingHours[6],
    };
  }

  hasRepair(int repairId) {
    return services.contains(repairId);
  }

  addReview(double rating, String comment) {
    reviews.add(Review(rating, comment));
  }

  getReviews() {
    return reviews;
  }
}
