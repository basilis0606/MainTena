import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../classes/Vehicle.dart';

class ProgressWidget extends StatelessWidget {
  final double notifMileage;
  final double mileage;
  final DateTime date;
  final String type;

  const ProgressWidget({
    Key? key,
    required this.notifMileage,
    required this.mileage,
    required this.date,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double progress = notifMileage / mileage;
    Color progressBarColor = Colors.blue;
    final notificationDate = date;
    final formattedDate = DateFormat('MMMM d, yyyy').format(notificationDate);

    return Card(
      color: const Color.fromARGB(255, 255, 151, 54),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        leading: SvgPicture.asset('assets/icons/maintenance.svg'),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$notifMileage km",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              formattedDate,
              style: const TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 85, 85, 85),
              ),
            ),
          ],
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(progressBarColor),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        type,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '${(progress * 100).toStringAsFixed(1)}%',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(221, 20, 20, 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
