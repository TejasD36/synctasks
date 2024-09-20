import 'package:flutter/material.dart';
import 'package:synctasks/task1.dart';
import 'package:synctasks/task2.dart';
import 'package:synctasks/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(
                title: "Task 1",
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Task1()));
                }
            ),
            const SizedBox(height: 15,),
            CustomButton(
                title: "Task 2",
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Task2()));
                }
            ),
          ],
        ),
      )
    );
  }
}
