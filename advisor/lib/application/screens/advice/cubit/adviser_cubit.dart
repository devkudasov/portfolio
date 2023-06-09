import 'package:advisor/domain/advice_usecases.dart';
import 'package:advisor/domain/entities/advice_entity.dart';
import 'package:advisor/domain/failures/failures.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'adviser_state.dart';

const kServerFailure = 'Ups, API Error. Please try again';
const kCacheFailure = 'Ups, cache failed. Please try again!';
const kGeneralFailure = 'Ups, something gone wrong. Please try again!';

class AdviserCubit extends Cubit<AdviserCubitState> {
  AdviserCubit() : super(AdvicerInitial());

  final AdviceUsecases _adviceUsecases = AdviceUsecases();

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    final Either<Failure, AdviceEntity> failureOrAdvice =
        await _adviceUsecases.getAdvice();

    failureOrAdvice.fold(
      (failure) =>
          emit(AdvicerStateError(message: _mapFailureToMassage(failure))),
      (advice) => emit(AdvicerStateLoaded(advice: advice.advice)),
    );
  }

  String _mapFailureToMassage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return kServerFailure;
      case CacheFailure:
        return kCacheFailure;
      default:
        return kGeneralFailure;
    }
  }
}
