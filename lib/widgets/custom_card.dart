import 'package:flutter/material.dart';

import 'custom_button.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String imgPath;
  final String coverImg;

  const CustomCard({super.key, required this.title,required this.imgPath,required this.coverImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Colors.grey
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              //Cover Photo
              Column(
                children: [
                  Image.asset(
                    coverImg,
                    // fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),

              //Profile Photo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(
                      imgPath,
                    ),
                  ),
                ),
              ),

              //Close Button
              Positioned(
                top: 5,
                right: 5,
                child: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black.withOpacity(0.6), // Transparent black background
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),

          //Title
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          //Description
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: Text(
                "12 Connections follow this Page",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
          ),

          //Follow Button
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CustomButton(
              title: "Follow",
              onPress: (){},
            ),
          ),
        ],
      ),
    );
  }
}
