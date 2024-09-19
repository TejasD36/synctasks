import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final VoidCallback onPress;
  const CustomButton({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 1.0
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
