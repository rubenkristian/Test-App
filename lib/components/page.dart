import 'package:flutter/material.dart';

class PageSlide extends StatelessWidget {
  final String title;
  final String description;

  const PageSlide({super.key, required this.description, required this.title});

  @override
  Widget build(Object context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 480),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(color: Colors.black, fontSize: 14),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
