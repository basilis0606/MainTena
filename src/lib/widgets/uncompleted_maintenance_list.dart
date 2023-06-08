import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../classes/Vehicle.dart';
import '../classes/Maintenance.dart';
import 'progress_widget.dart';
import 'package:intl/intl.dart';

class uncompletedMaintenanceList extends StatelessWidget {
  final Vehicle my_veh;

  const uncompletedMaintenanceList({Key? key, required this.my_veh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: my_veh.manual.notifications.length,
      itemBuilder: (context, index) {
        index = my_veh.manual.notifications.length - index - 1;

        if (my_veh.manual.notifications[index].isDone ||
            my_veh.manual.notifications[index] is! Maintenance) {
          return SizedBox.shrink();
        }

        return ProgressWidget(
            notifMileage: my_veh.manual.notifications[index].mileage,
            mileage: my_veh.manual.mileage,
            date: my_veh.manual.notifications[index].date,
            type: (my_veh.manual.notifications[index] as Maintenance).type);
      },
      separatorBuilder: (BuildContext context, int index) {
        index = my_veh.manual.notifications.length - index - 1;
        if (my_veh.manual.notifications[index].isDone ||
            my_veh.manual.notifications[index] is! Maintenance) {
          return SizedBox.shrink();
        }
        return Divider();
      },
    );
  }
}
