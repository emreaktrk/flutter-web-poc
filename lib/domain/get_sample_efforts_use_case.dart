import 'package:flutter_web_poc/data/api/effort_repository.dart';
import 'package:flutter_web_poc/data/model/effort.dart';
import 'package:flutter_web_poc/domain/use_case.dart';

class GetSampleEffortsUseCase extends UseCase with Input<GetSampleEffortInputs, List<Effort>> {
  final repository = EffortRepository();

  @override
  Future<List<Effort>> invoke(GetSampleEffortInputs input) {
    return repository.getSamples(input.threshold, input.size);
  }
}

class GetSampleEffortInputs {
  final int threshold;
  final int size;

  GetSampleEffortInputs({required this.threshold, required this.size});
}
