import 'package:flutter/cupertino.dart';
import 'package:synctasks/consts/strings.dart';

Widget customButton (String title, IconData icon){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: greyFont,
        width: 1,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Text(title,style: const TextStyle(color: whiteFont),),
          const SizedBox(width: 6,),
          Icon(icon, color: whiteFont)
        ],
      ),
    ),
  );
}