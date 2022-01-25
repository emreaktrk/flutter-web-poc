import 'package:flutter_web_poc/data/api/task_repository.dart';
import 'package:flutter_web_poc/domain/use_case.dart';

class GetTaskProgressUseCase extends UseCase with NoInput<double> {
  final repository = TaskRepository();

  @override
  Future<double> invoke() => repository.getProgress();
}
