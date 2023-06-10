import 'package:flutter/material.dart';
import 'package:forms_app/responsive/responsive.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //call method init from ScreenSize class to get screen size
    ScreenSize.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Counter'),
        actions: [
          IconButton(
              onPressed: () => {}, icon: const Icon(Icons.refresh_outlined))
        ],
      ),
      body: const Center(
        child: Text('Counter value: xxx'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: '1', child: const Text('+3'), onPressed: () => {}),
          SizedBox(height: ScreenSize.height * 0.02),
          FloatingActionButton(
              heroTag: '2', child: const Text('+2'), onPressed: () => {}),
          SizedBox(height: ScreenSize.height * 0.02),
          FloatingActionButton(
              heroTag: '3', child: const Text('+1'), onPressed: () => {}),
          SizedBox(height: ScreenSize.height * 0.02),
        ],
      ),
    );
  }
}
