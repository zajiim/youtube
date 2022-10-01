import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/application/home/home_bloc.dart';
import 'package:youtube_clone/core/constants.dart';
import 'package:youtube_clone/domain/core/dependency_injection/injectable.dart';

import 'presentation/main_screen/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
        title: "Youtube",
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: kWhiteColor,
          ),
          brightness: Brightness.light,
        ),
        home: MainScreen(),
      ),
    );
  }
}
