import 'package:flutter/material.dart';
import 'package:synctasks/consts/strings.dart';
import 'package:synctasks/widgets/custom_card.dart';

import 'consts/lists.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: nameList.length,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.70,
          ),
          itemBuilder: (context, index) {
            return CustomCard(
              title: nameList[index],
              imgPath: imgList[index],
              coverImg: coverImg,
            ); // Displaying the CustomCard widget
          },
        ),
      ),
    );
  }
}
