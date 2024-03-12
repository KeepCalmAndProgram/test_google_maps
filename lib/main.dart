import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_google_maps/task3/providers/theme_provider.dart';
import 'package:test_google_maps/task3/screen/google_maps_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Google Map',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.lightBlueAccent,
                brightness: context.watch<ThemeProvider>().isDark
                    ? Brightness.dark
                    : Brightness.light,
              ),
              useMaterial3: true,
            ),
            // home: const RenderElements(title: "Render Elements"),
            home: const GoogleMapsScreen(title: "Google Maps Screen"),
          );
        },
      ),
    );
  }
}
