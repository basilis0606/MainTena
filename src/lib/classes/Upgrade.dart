import 'ServiceTask.dart';

class Upgrade extends ServiceTask {
  String type;

  Upgrade(
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
// main(){}

