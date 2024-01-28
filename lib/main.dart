import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mozprop/repository/repository.dart';
import 'package:mozprop/screen/screen.dart';
import 'package:mozprop/store/store.dart';

void main() {
  setupLocators();
  runApp(const MyApp());
  PropertyTypeRepository().getAll().then((value) => print(value));
}

void setupLocators() {
  GetIt.I.registerSingleton<PropertyTypeStore>(PropertyTypeStore());
  GetIt.I.registerSingleton<PageStore>(PageStore());
  GetIt.I.registerSingleton<BottomNavigationStore>(BottomNavigationStore());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moz Properties',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green[600]!),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      home: const BaseScreen(),
    );
  }
}
