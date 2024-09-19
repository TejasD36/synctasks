import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recommendations"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/cover.png",
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                  CircleAvatar(
                    child: Image.asset(
                      "assets/cover.png",
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
