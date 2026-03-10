import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String content;

  const ListItem({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              backgroundColor: Colors.green,
              fontSize: 20,
              color: Colors.purpleAccent,
            ),
          ),
          Text(content, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
