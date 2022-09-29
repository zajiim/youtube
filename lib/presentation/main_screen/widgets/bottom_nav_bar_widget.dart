import "package:flutter/material.dart";

import '../../add_video/widgets/bottom_sheet_content_widget.dart';

ValueNotifier<int> pageIndex = ValueNotifier(0);

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (context, int newVal, _) {
          return BottomNavigationBar(
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
            currentIndex: newVal,
            onTap: (value) => pageIndex.value = value,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    (pageIndex.value == 0)
                        ? Icons.home_filled
                        : Icons.home_outlined,
                    size: 20,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    (pageIndex.value == 1)
                        ? Icons.video_library_rounded
                        : Icons.video_library_outlined,
                    size: 20,
                  ),
                  label: "Shorts"),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                    onTap: () {
                      showShortsSheet(context);
                    },
                    child: const Icon(
                      Icons.add_circle_outline,
                      size: 40,
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    (pageIndex.value == 2)
                        ? Icons.subscriptions
                        : Icons.subscriptions_outlined,
                    size: 20,
                  ),
                  label: "Subscription"),
              BottomNavigationBarItem(
                  icon: Icon(
                    (pageIndex.value == 3)
                        ? Icons.library_add
                        : Icons.library_add_outlined,
                    size: 20,
                  ),
                  label: "Library"),
            ],
          );
        });
  }
}

showShortsSheet(BuildContext context) {
  final screenDimension = MediaQuery.of(context).size;
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SizedBox(
            height: screenDimension.height * 0.3,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Create",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                      ),
                    ),
                  ],
                ),
                const BottomSheetContentsWidget(
                  icon: Icons.video_collection_outlined,
                  title: "Create a Short",
                ),
                const BottomSheetContentsWidget(
                  icon: Icons.file_upload_outlined,
                  title: "Upload a video",
                ),
                const BottomSheetContentsWidget(
                  icon: Icons.settings_input_antenna,
                  title: "Go Live",
                ),
              ],
            ),
          ),
        );
      });
}
