import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:string_calculator_kata/features/string_calculator/domain/usecases/add_numbers_usecase.dart';

part 'string_calculator_event.dart';
part 'string_calculator_state.dart';
part 'string_calculator_bloc.freezed.dart';

@injectable
class StringCalculatorBloc
    extends Bloc<StringCalculatorEvent, StringCalculatorState> {
  final AddNumberUseCase _useCase;
  StringCalculatorBloc(this._useCase) : super(StringCalculatorState()) {
    on<StringCalculatorEvent>((event, emit) => event);
  }
}
