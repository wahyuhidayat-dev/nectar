import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nectar/screens/splashscreenfirst.dart';
import 'package:nectar/utils/routing.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'nectar',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        getPages: RoutingClass.LISTPAGE,
        home: const SplashScreenFirst());
  }
}
