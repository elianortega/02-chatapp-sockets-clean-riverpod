import 'package:dio/dio.dart';
import 'package:errors/errors.dart';

/// Interface for Auth data source
abstract class AuthDataSource {
  //TODO: Implement datasource interface

  //*Example
  ///Make example addition
  Future<int> exampleAddition(int currentNumber);
}

/// Auth data source implementation
class IAuthDataSource implements AuthDataSource {
  //TODO: Implement interface

  final Dio _dio = Dio();

  //* Example
  ///Example implementation of addition with API
  @override
  Future<int> exampleAddition(int currentNumber) async {
    return await _incrementCounterFromApi('$currentNumber + 1');
  }

  Future<int> _incrementCounterFromApi(String operation) async {
    final response = await _dio.post(
      'https://api.mathjs.org/v4/',
      options: RequestOptions(
        headers: {'Content-Type': 'application/json'},
      ),
      data: {'expr': operation},
    );

    if (response.statusCode == 200) {
      final result = response.data['result'];
      return int.parse(result);
    } else {
      throw ServerException();
    }
  }
}
