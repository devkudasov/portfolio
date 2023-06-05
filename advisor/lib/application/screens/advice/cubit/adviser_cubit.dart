import 'package:advisor/domain/advice_usecases.dart';
import 'package:advisor/domain/entities/advice_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'adviser_state.dart';

class AdviserCubit extends Cubit<AdviserCubitState> {
  AdviserCubit() : super(AdvicerInitial());

  final AdviceUsecases _adviceUsecases = AdviceUsecases();

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    final AdviceEntity advice = await _adviceUsecases.getAdvice();
    emit(AdvicerStateLoaded(advice: advice.advice));
  }
}
