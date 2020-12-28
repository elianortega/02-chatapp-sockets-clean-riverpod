import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

import '../repositories/auth_repository.dart';

import 'usecase.dart';

///Increment Counter usecase
class ExampleAddition implements UseCase<int, int> {
  /// Example Addition constructor
  ExampleAddition({
    @required AuthRepository authRepo,
  })  : assert(authRepo != null),
        _authRepo = authRepo;

  final AuthRepository _authRepo;

  @override
  Future<Either<Failure, int>> call(int currentNumber) async {
    return await _authRepo.exampleFunctionAddition(currentNumber);
  }
}
