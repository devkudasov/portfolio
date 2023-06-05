import 'package:advisor/domain/entities/advice_entity.dart';

class AdviceUsecases {
  Future<AdviceEntity> getAdvice() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {},
    );

    return const AdviceEntity(
      advice: 'Fake advice to test domain app area',
      id: 1,
    );
  }
}
