import 'package:advisor/data/repositories/advice_repo_impl.dart';
import 'package:advisor/domain/entities/advice_entity.dart';
import 'package:advisor/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

class AdviceUsecases {
  final AdviceRepoImpl adviceRepo = AdviceRepoImpl();

  Future<Either<Failure, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDataSource();
  }
}
