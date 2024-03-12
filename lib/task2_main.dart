import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_google_maps/task2/providers/increment_cubit.dart';
import 'package:test_google_maps/task2/screens/streams_testing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => IncrementCubit(),
      dispose: (_, provider) => provider.dispose(),
      child: MaterialApp(
        title: 'Google Map',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlueAccent,
            brightness: Brightness.light,
          ),
          useMaterial3: true,
        ),
        home: const StreamsTesting(title: "Render Elements"),
      ),
    );
  }
}
