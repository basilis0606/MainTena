import 'ServiceTask.dart';

class Damage extends ServiceTask {
  String type;

  Damage(
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
