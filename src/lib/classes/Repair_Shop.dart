import 'package:flutter/material.dart';
import 'package:try_project/classes/Expense.dart';
import 'package:try_project/classes/ServiceManual.dart';

class Repair_Shop {
  String name;
  String email;
  String phone;
  String website;
  Location location;
  List<int> services = [];
  double membmer_discount;
  List<date> work_hours;
  List<Review> reviews;
  
Repair_Shop()
{

}

hasRepair(int repair)
{
    bool a;
    for (final int b in services) 
    {
    if(repair==b)
    {a=b;}
    }

}

addReview()
{
     reviews.add(Review);
}
showAllReviews()
{
    for (final Review in reviews) 
    {
  print(Review);
    }

}
}