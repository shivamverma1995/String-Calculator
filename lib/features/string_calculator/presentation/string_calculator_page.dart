import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:string_calculator_kata/features/string_calculator/presentation/bloc/string_calculator_bloc.dart';
import 'package:string_calculator_kata/injectable/injectable.dart';

class StringCalculatorPage extends StatelessWidget {
  const StringCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StringCalculatorBloc>(
      create: (context) => getIt<StringCalculatorBloc>(),
      child: Scaffold(
        appBar: AppBar(title: Text("String Calculator Kata")),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<StringCalculatorBloc>();
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: "Enter numbers string",
              hintText: "e.g 1,2,3 or //;\n1;2",
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
            onChanged: (value) {
              bloc.add(StringCalculatorEvent.inputChanged(value));
            },
          ),
          const SizedBox(height: 16),
          BlocBuilder<StringCalculatorBloc, StringCalculatorState>(
            builder: (context, state) => ElevatedButton(
              onPressed: state.isLoading
                  ? null
                  : () {
                      bloc.add(StringCalculatorEvent.submitted());
                    },
              child: state.isLoading
                  ? CircularProgressIndicator(strokeWidth: 2)
                  : Text("Calculate"),
            ),
          ),
          const SizedBox(height: 24),
          BlocBuilder<StringCalculatorBloc, StringCalculatorState>(
            builder: (context, state) {
              if (state.error != null) {
                return Text(state.error!, style: TextStyle(color: Colors.red));
              }
              if (state.result != null) {
                return Text(
                  "Result: ${state.result}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                );
              }
              return const Text("Result will appear here");
            },
          ),
        ],
      ),
    );
  }
}
