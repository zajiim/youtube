import "package:flutter/material.dart";
import 'package:youtube_clone/core/constants.dart';
import 'package:youtube_clone/core/sizers.dart';
import 'package:youtube_clone/presentation/library/widgets/custom_text_button_widget.dart';

import '../common/appbar_widget.dart';
import 'widgets/recent_carousel_widget.dart';

List items = ["item 1", "item 2", "item 3"];

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
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Text(
              "Recent",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 14),
            child: SizedBox(
              width: 200,
              height: 200,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const RecentCarousel(),
                separatorBuilder: (context, index) => k5Width,
                itemCount: 5,
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: const [
                CustomTextButtonWidget(
                  icon: Icons.history,
                  text: "History",
                ),
                k10Height,
                CustomTextButtonWidget(
                  icon: Icons.smart_display_outlined,
                  text: "Your videos",
                ),
                k10Height,
                CustomTextButtonWidget(
                  icon: Icons.download_outlined,
                  text: "Downloads",
                  subtext: "67 videos",
                  trailingIcon: Icons.check_circle,
                ),
                k10Height,
                CustomTextButtonWidget(
                  icon: Icons.theaters_outlined,
                  text: "Your movies",
                ),
                k10Height,
                CustomTextButtonWidget(
                  icon: Icons.schedule,
                  text: "Watch later",
                  subtext: "4 unwatched videos",
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Playlists",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text("Recently added"),
                Icon(
                  Icons.expand_more,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  color: kBlueColor,
                ),
                k10Width,
                const Text(
                  "New Playlist",
                  style: TextStyle(
                    color: kBlueColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlOaJ-k1r2OTRVT-W88nJbLv2EdDfdpqbYlg&usqp=CAU",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                k10Width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Liked Videos"),
                    Text(
                      "50 videos",
                      style: TextStyle(
                        color: kGreyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
