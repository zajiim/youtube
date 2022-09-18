import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:youtube_clone/core/constants.dart';

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
        appBarTheme: const AppBarTheme(
          backgroundColor: kWhiteColor,
        ),
        brightness: Brightness.light,
      ),
      home: MainScreen(),
    );
  }
}
