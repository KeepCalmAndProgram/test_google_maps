import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_google_maps/task3/providers/theme_provider.dart';
import 'package:test_google_maps/task3/screen/google_maps_screen.dart';
import 'package:test_google_maps/task4/animation/rotation_animation_widget.dart';
import 'package:test_google_maps/task4/animation/scale_animation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ThemeCubit(),
      dispose: (_, provider) => provider.dispose(),
      child: Builder(
        builder: (context) {
          return StreamBuilder(
            initialData: false,
            stream: context.read<ThemeCubit>().stream,
            builder: (context, snapshot) {
              if (snapshot.data is bool) {
                return MaterialApp(
                  title: 'Google Map',
                  theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.lightBlueAccent,
                      brightness: snapshot.data as bool
                          ? Brightness.dark
                          : Brightness.light,
                    ),
                    useMaterial3: true,
                  ),
                  // home: const RenderElements(title: "Render Elements"),
                  home: const GoogleMapsScreen(title: "Google Maps Screen"),
                );
              }

              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}
