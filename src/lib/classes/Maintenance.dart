import 'ServiceTask.dart';

class Maintenance extends ServiceTask {
  String type;

  Maintenance(
      {required this.type,
      required serviceTaskId,
      required mileage,
      required date,
      required estimatedCost,
      description})
      : super(
            serviceTaskId: serviceTaskId,
            mileage: mileage,
            date: date,
            estimatedCost: estimatedCost,
            description: description);
}
