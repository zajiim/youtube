import "package:flutter/material.dart";

class IconWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconWidget({
    Key? key, required this.text, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
          ),
        ),
        Text(text),
      ],
    );
  }
}
