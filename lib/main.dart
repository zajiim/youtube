import "package:flutter/material.dart";
import 'package:flutter/services.dart';

import 'presentation/main_screen/main_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: "Youtube",
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: MainScreen(),
    );
  }
}
