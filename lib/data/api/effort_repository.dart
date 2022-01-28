import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_web_poc/data/model/effort.dart';
import 'package:flutter_web_poc/data/repository.dart';

class EffortRepository extends Repository {
  Future<List<Effort>> getSamples(int threshold, int size) async {
    const delay = Duration(seconds: 5);
    await Future.delayed(delay);

    final response = await Dio().post("http://localhost:8080/efforts/$threshold/$size");

    if (response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
      final json = jsonDecode(response.data);
      final payload = json.map((e) => Effort.fromJson(e)).toList();

      final efforts = <Effort>[];
      for (var element in payload) {
        efforts.add(element);
      }

      return efforts;
    }

    throw Exception("Unable to get samples");
  }
}
