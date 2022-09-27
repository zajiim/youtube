import "package:flutter/material.dart";

import 'widgets/shorts_video_widget.dart';


class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
            return  ShortsVideoWidget(index: index,);
          }),
        ),
      ),
    );
  }
}
