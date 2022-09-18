import "package:flutter/material.dart";
import 'package:youtube_clone/presentation/add_video/add_video_screen.dart';
import 'package:youtube_clone/presentation/home/home_screen.dart';
import 'package:youtube_clone/presentation/library/library_screen.dart';
import 'package:youtube_clone/presentation/main_screen/widgets/bottom_nav_bar_widget.dart';
import 'package:youtube_clone/presentation/shorts/shorts_screen.dart';
import 'package:youtube_clone/presentation/subscriptions/subscription_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final pages = [
    const HomeScreen(),
    const ShortsScreen(),
    const AddVideoScreen(),
    const SubscriptionScreen(),
    const LibraryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: pageIndex,
          builder: ((context, value, _) {
            return pages[value];
          }),
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
