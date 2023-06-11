import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_bloc/counter_bloc.dart';
import 'package:forms_app/responsive/responsive.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //call method init from ScreenSize class to get screen size
    ScreenSize.init(context);
    return BlocProvider(
        create: (_) => CounterBloc(), child: const BlockCounterView());
  }
}

class BlockCounterView extends StatelessWidget {
  const BlockCounterView({
    super.key,
  });

  void increaseCounterBy(BuildContext context, [int value = 1]) {
    context.read<CounterBloc>().add(CounterIncreased(value));
  }

  void resetCounter(BuildContext context) {
    context.read<CounterBloc>().add(const CounterReset());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterBloc counterBloc) =>
            Text('Counter value:${counterBloc.state.transactionCount}')),
        actions: [
          IconButton(
              onPressed: () => resetCounter(context),
              icon: const Icon(Icons.refresh_outlined))
        ],
      ),
      body: Center(
        child: context.select((CounterBloc counterBloc) =>
            Text('Counter value:${counterBloc.state.counter}')),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: '1',
              child: const Text('+3'),
              onPressed: () => increaseCounterBy(context, 3)),
          SizedBox(height: ScreenSize.height * 0.02),
          FloatingActionButton(
              heroTag: '2',
              child: const Text('+2'),
              onPressed: () => increaseCounterBy(context, 2)),
          SizedBox(height: ScreenSize.height * 0.02),
          FloatingActionButton(
              heroTag: '3',
              child: const Text('+1'),
              onPressed: () => increaseCounterBy(context)),
          SizedBox(height: ScreenSize.height * 0.02),
        ],
      ),
    );
  }
}
