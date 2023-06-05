import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'adviser_state.dart';

class AdviserCubit extends Cubit<AdviserCubitState> {
  AdviserCubit() : super(AdvicerInitial());

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    await Future.delayed(
      const Duration(seconds: 3),
      () {},
    );
    emit(const AdvicerStateLoaded(advice: 'Fake advice to test BLoC'));
  }
}
