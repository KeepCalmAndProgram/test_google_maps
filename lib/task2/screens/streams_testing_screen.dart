import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/increment_provider.dart';


class StreamsTesting extends StatefulWidget {
  const StreamsTesting({super.key, required this.title});

  final String title;

  @override
  State<StreamsTesting> createState() => _StreamsTestingState();
}

class _StreamsTestingState extends State<StreamsTesting> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              //'$_counter',
              context.watch<int>().toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<IncrementProvider>().incrementCounter(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}