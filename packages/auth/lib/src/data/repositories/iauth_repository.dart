import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:network_manager/network_manager.dart';

import 'package:auth/src/data/datasources/auth_datasource.dart';

//Domain
import 'package:auth/src/domain/repositories/auth_repository.dart';

typedef _ExampleResultFunction = Future<int> Function();

///Cunter repo implementation
class IAuthRepository implements AuthRepository {
  ///Counter repo constructor
  IAuthRepository({
    @required AuthDataSource authDataSource,
    @required NetworkManager networkManager,
  })  : assert(authDataSource != null),
        _authDataSource = authDataSource,
        _networkManager = networkManager;

  final AuthDataSource _authDataSource;
  final NetworkManager _networkManager;

  //TODO: Implement Auth repository

  //*Example:
  @override
  Future<Either<Failure, int>> exampleFunctionAddition(int currentNumber) {
    return _getAddition(() => _authDataSource.exampleAddition(currentNumber));
  }

  Future<Either<Failure, int>> _getAddition(
    _ExampleResultFunction authUseCase,
  ) async {
    if (await _networkManager.isConnected) {
      try {
        final result = await authUseCase();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}

