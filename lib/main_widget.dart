import 'package:flutter/material.dart';
import 'package:tasbeeh_app/cubit/tasbeeh_cubit.dart';
import 'package:tasbeeh_app/tasbeeh_model.dart';

class main_widget extends StatelessWidget {
  final Item item;
  main_widget({required this.item});

  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(
              item.image,
              width: 340,
              fit: BoxFit.fitHeight,
              alignment: Alignment.center,
            ),
            Text(
              item.name,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}