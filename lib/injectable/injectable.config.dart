// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../features/string_calculator/data/repo_impl/string_calculator_repo_impl.dart'
    as _i426;
import '../features/string_calculator/domain/repo/string_calculator_repo.dart'
    as _i658;
import '../features/string_calculator/domain/usecases/add_numbers_usecase.dart'
    as _i540;
import '../features/string_calculator/presentation/bloc/string_calculator_bloc.dart'
    as _i906;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i658.StringCalculatorRepo>(
      () => _i426.StringCalculatorRepoImpl(),
    );
    gh.lazySingleton<_i540.AddNumberUseCase>(
      () => _i540.AddNumberUseCase(gh<_i658.StringCalculatorRepo>()),
    );
    gh.factory<_i906.StringCalculatorBloc>(
      () => _i906.StringCalculatorBloc(gh<_i540.AddNumberUseCase>()),
    );
    return this;
  }
}
