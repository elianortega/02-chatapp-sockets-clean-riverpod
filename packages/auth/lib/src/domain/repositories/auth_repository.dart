import 'package:errors/errors.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';

/// Repository interface for auth
@immutable
abstract class AuthRepository {
  //TODO: Implement Interface

  //*Example:
  ///Example of abstract function
  Future<Either<Failure, int>> exampleFunctionAddition(int currentNumber);
}

    