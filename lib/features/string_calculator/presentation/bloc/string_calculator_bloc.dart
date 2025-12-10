import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:string_calculator_kata/core/error/negative_number_exception.dart';
import 'package:string_calculator_kata/features/string_calculator/domain/usecases/add_numbers_usecase.dart';

part 'string_calculator_event.dart';
part 'string_calculator_state.dart';
part 'string_calculator_bloc.freezed.dart';

@injectable
class StringCalculatorBloc
    extends Bloc<StringCalculatorEvent, StringCalculatorState> {
  final AddNumberUseCase _useCase;
  StringCalculatorBloc(this._useCase) : super(StringCalculatorState()) {
    on<StringCalculatorEvent>(
      (event, emit) => event.when(
        inputChanged: (input) => _onInputChanged(emit, input),
        submitted: () => _onSubmitted(emit),
      ),
    );
  }

  void _onInputChanged(Emitter emit, String input) {
    emit(state.copyWith(input: input, error: null, result: null));
  }

  void _onSubmitted(Emitter emit) {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final result = _useCase(state.input);
      emit(state.copyWith(isLoading: false, result: result, error: null));
    } on NegativeNumberException catch (e) {
      emit(state.copyWith(isLoading: false, result: null, error: e.toString()));
    } on FormatException catch (e) {
      emit(state.copyWith(isLoading: false, result: null, error: e.message));
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          result: null,
          error: "Unexpected error:$e",
        ),
      );
    }
  }
}
