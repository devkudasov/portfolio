part of 'adviser_cubit.dart';

abstract class AdviserCubitState extends Equatable {
  const AdviserCubitState();

  @override
  List<Object?> get props => [];
}

class AdvicerInitial extends AdviserCubitState {}

class AdvicerStateLoading extends AdviserCubitState {}

class AdvicerStateLoaded extends AdviserCubitState {
  final String advice;
  const AdvicerStateLoaded({required this.advice});

  @override
  List<Object?> get props => [advice];
}

class AdvicerStateError extends AdviserCubitState {
  final String message;
  const AdvicerStateError({required this.message});

  @override
  List<Object?> get props => [message];
}
