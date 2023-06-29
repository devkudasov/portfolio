import 'package:advisor/data/datasources/advice_remote_datasource.dart';
import 'package:advisor/domain/entities/advice_entity.dart';
import 'package:advisor/domain/failures/failures.dart';
import 'package:advisor/domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteDatasource _adviceRemoteDatasource =
      AdviceRemoteDatasourceImpl();

  @override
  Future<Either<Failure, AdviceEntity>> getAdviceFromDataSource() async {
    try {
      final result = await _adviceRemoteDatasource.getRandomAdviceFromApi();

      return right(result);
    } catch (e) {
      return left(GeneralFailure());
    }
  }
}
