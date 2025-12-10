import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:string_calculator_kata/features/string_calculator/domain/repo/string_calculator_repo.dart';
import 'package:string_calculator_kata/features/string_calculator/domain/usecases/add_numbers_usecase.dart';

void main() {
  late AddNumberUseCase useCase;
  late MockStringCalculatorRepository repo;

  setUpAll(() {
    repo = MockStringCalculatorRepository();
    useCase = AddNumberUseCase(repo);
  });

  test("should delegate to repository add", () {
    const input = '1,2,3';
    when(() => repo.add(any())).thenReturn(6);

    final result = useCase(input);

    expect(result, 6);
    verify(() => repo.add(any())).called(1);
  });
}

class MockStringCalculatorRepository extends Mock
    implements StringCalculatorRepo {}
