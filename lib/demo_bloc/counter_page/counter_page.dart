import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/demo_bloc/counter_page/counter_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(""),
    ),
    body: Center(
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (BuildContext context, state) =>
          switch (state) {
            CounterInitial() =>  Text("Press + or -"),
            CounterChanged() =>
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You have pushed the button this many times:',
                  ),
                Text("${state.count}"),
                Text('${context.watch<CounterCubit>().state.count}'),
                ],
                )
          }
      ),
    ),
    floatingActionButton: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: context.read<CounterCubit>().increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: context.read<CounterCubit>().decrement,
          tooltip: 'decrement',
          child: const Icon(Icons.remove),
        ),
      ],
    ),
      // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}