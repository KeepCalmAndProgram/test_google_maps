import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_google_maps/task2/providers/increment_cubit.dart';

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
      body: StreamBuilder<Object>(
        initialData: context.read<IncrementCubit>().counter,
        stream: context.read<IncrementCubit>().stream,
        builder: (context, snapshot) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  snapshot.data.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<IncrementCubit>().incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
