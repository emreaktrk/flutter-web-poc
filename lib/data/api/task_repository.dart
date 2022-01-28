import 'package:flutter_web_poc/data/repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskRepository extends Repository {
  Future<double> getProgress() async {
    const delay = Duration(seconds: 5);
    await Future.delayed(delay);

    final sharedPreference = await SharedPreferences.getInstance();
    final current = sharedPreference.getDouble("PROGRESS");

    if (current == null) {
      sharedPreference.setDouble("PROGRESS", .39);
    }

    final progress = sharedPreference.getDouble("PROGRESS");
    return progress ?? 0;
  }
}
