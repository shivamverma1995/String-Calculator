import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_kata/core/error/negative_number_exception.dart';
import 'package:string_calculator_kata/features/string_calculator/data/repo_impl/string_calculator_repo_impl.dart';

void main() {
  late StringCalculatorRepoImpl repo;

  setUp(() {
    repo = StringCalculatorRepoImpl();
  });

  test("empty string returns 0", () {
    expect(repo.add(""), 0);
  });

  test("single number returns its value", () {
    expect(repo.add("1"), 1);
  });

  test("two numbers comma seprated are summed", () {
    expect(repo.add("1,5"), 6);
  });

  test("handles any amount of numbers", () {
    expect(repo.add("1,2,3,4"), 10);
  });

  test("handles new lines between numbers", () {
    expect(repo.add("1\n2,3"), 6);
  });

  test("supports custom delimiter", () {
    expect(repo.add("//;\n1;2;3"), 6);
  });

  test("throws exception for single negative number", () {
    expect(() => repo.add("-1"), throwsA(isA<NegativeNumberException>()));
  });

  test("exception message contains more than one negative numbers", () {
    try {
      repo.add('-1,2,-3');
      fail("should have thrown NegativeNumberException");
    } on NegativeNumberException catch (e) {
      expect(e.numbers, [-1, -3]);
      expect(e.toString(), "negative numbers not allowed: -1,-3");
    }
  });
}
