import "package:flutter/material.dart";

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
                  icon: Icon(
                    (pageIndex.value == 2)
                        ? Icons.add_circle
                        : Icons.add_circle_outline,
                    size: 40,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    (pageIndex.value == 3)
                        ? Icons.subscriptions
                        : Icons.subscriptions_outlined,
                    size: 20,
                  ),
                  label: "Subscription"),
              BottomNavigationBarItem(
                  icon: Icon(
                    (pageIndex.value == 4)
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
