import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final Color color;
  final String text;

  const StatCard({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
