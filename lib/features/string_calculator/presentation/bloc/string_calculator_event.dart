part of 'string_calculator_bloc.dart';

@freezed
class StringCalculatorEvent with _$StringCalculatorEvent {
  const factory StringCalculatorEvent.inputChanged(String input) =
      _InputChanged;
  const factory StringCalculatorEvent.submitted() = _Submitted;
}
