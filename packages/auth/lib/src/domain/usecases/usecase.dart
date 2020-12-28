import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

/// Interface for usecases
abstract class UseCase<Type, UseCaseParam> {
  //TODO: Change UseCase Type
  /// method call on class creation
  Future<Either<Failure, Type>> call(UseCaseParam params);
}
 