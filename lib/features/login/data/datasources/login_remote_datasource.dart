import 'dart:convert';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/utils/error/exceptions.dart';
import 'package:wikimsglow/features/login/data/models/login_model.dart';
import 'package:http/http.dart' as http;

abstract class LoginRemoteDataSource {
  Future<LoginModel> getLogin(String username, String password);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  late final http.Client client;

  LoginRemoteDataSourceImpl({required this.client});

  @override
  Future<LoginModel> getLogin(String username, String password) async {
    final response = await client.post(Uri.parse('${AppsConfig.baseUrl}/auth'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'user_id': username,
          'password': password,
        }));

    if (response.statusCode == 200) {
      return LoginModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
