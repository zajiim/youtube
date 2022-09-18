import "package:flutter/material.dart";

import '../common/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenDimension = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50), child: AppBarWidget()),
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
