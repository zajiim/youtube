import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';

import '../common/appbar_widget.dart';
import 'widgets/recent_carousel_widget.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Recent",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const RecentCarousel(),
              separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
