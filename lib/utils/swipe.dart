import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

class SwipeCard extends StatelessWidget {
  final Color color;

  SwipeCard({required this.color});

  @override
  Widget build(BuildContext context) {
    return Swipable(
      child: Container(
        color: color,
        //width: double.infinity,
      ),
    );
  }
}
