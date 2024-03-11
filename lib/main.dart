import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_google_maps/task2/providers/increment_provider.dart';
import 'package:test_google_maps/task3/screen/google_maps_screen.dart';
import 'package:test_google_maps/task1/first_task.dart';
import 'package:test_google_maps/task2/streams_testing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Map',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const RenderElements(title: "Render Elements"),
      //home: const GoogleMapsScreen(title: "Google Maps Screen"),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => IncrementProvider(counter: null),
        ),
      ],
      child: MaterialApp(
        title: 'Google Map',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
          useMaterial3: true,
        ),
        home: StreamsTesting(title: "Stream Testing"),
      ),
    );
  }
}
