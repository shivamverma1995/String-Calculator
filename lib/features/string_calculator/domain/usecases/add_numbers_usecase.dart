import 'package:injectable/injectable.dart';
import 'package:string_calculator_kata/features/string_calculator/domain/repo/string_calculator_repo.dart';

@lazySingleton
class AddNumberUseCase {
  final StringCalculatorRepo repo;

  const AddNumberUseCase(this.repo);

  int call(String numbers) => repo.add(numbers);
}
