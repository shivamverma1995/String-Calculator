import 'package:injectable/injectable.dart';
import 'package:string_calculator_kata/core/error/negative_number_exception.dart';
import 'package:string_calculator_kata/features/string_calculator/domain/repo/string_calculator_repo.dart';

@LazySingleton(as: StringCalculatorRepo)
class StringCalculatorRepoImpl implements StringCalculatorRepo {
  @override
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String working = numbers;
    String delimitersPattern = r',|\n';

    if (numbers.startsWith('//')) {
      final newlineIndex = numbers.indexOf('\n');
      if (newlineIndex == -1) {
        throw FormatException("Invalid custom delimiter format");
      }

      final delimiterPart = numbers.substring(2, newlineIndex);
      final customDelomiter = RegExp.escape(delimiterPart);

      delimitersPattern = '$customDelomiter|,|\n';
      working = numbers.substring(newlineIndex + 1);
    }

    final tokens = working.split(RegExp(delimitersPattern));
    final values = <int>[];
    final negatives = <int>[];

    for (final raw in tokens) {
      final trimmed = raw.trim();
      if (trimmed.isEmpty) continue;

      final value = int.parse(trimmed);

      if (value < 0) {
        negatives.add(value);
      }
      values.add(value);
    }
    if (negatives.isNotEmpty) {
      throw NegativeNumberException(negatives);
    }
    return values.fold<int>(0, (sum, v) => sum + v);
  }
}
