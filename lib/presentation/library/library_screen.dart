import "package:flutter/material.dart";

import '../common/appbar_widget.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize:  Size.fromHeight(50), child: AppBarWidget(),),
      body: Center(child: Text("Library Screen",),),
    );
  }
}