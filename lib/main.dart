import 'package:flutter/material.dart';
import 'package:test_google_maps/google_maps_screen.dart';
import 'package:test_google_maps/testing/first_task.dart';
import 'package:test_google_maps/testing/streams_testing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Map',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      //home: StreamsTesting(title: "Streams"),
      //home: const RenderElements(),
      home: const GoogleMapsScreen(),
    );
  }
}
