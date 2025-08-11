import 'package:dio/dio.dart';

import '../models/user.dart';

// internetten veri çekme servisi
class UserService {
  final Dio _dio = Dio();
  Future<List<User>> fetchUsers() async {
    final response = await _dio.get(
      'https://reqres.in/api/users?page=1',
      options: Options(headers: {'x-api-key': 'reqres-free-v1'}),
    );
    final List<dynamic> data = response.data['data'];
    return data.map((json) => User.fromMap(json)).toList();
  }
}
