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
      height: 245,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Colors.grey
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              //Cover Photo
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  coverImg,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              //Profile Photo
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
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

          const SizedBox(height: 5,)
        ],
      ),
    );
  }
}
