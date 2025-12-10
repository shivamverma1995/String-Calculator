import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_kata/features/string_calculator/data/repo_impl/string_calculator_repo_impl.dart';

void main() {
  late StringCalculatorRepoImpl repo;

  setUp(() {
    repo = StringCalculatorRepoImpl();
  });

  test("empty string returns 0", () {
    expect(repo.add(""), 0);
  });
}
