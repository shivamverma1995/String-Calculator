part of 'string_calculator_bloc.dart';

@freezed
abstract class StringCalculatorState with _$StringCalculatorState {
  const factory StringCalculatorState({
    @Default("") String input,
    int? result,
    String? error,
    @Default(false) bool isLoading,
  }) = _StringCalculatorState;
}
