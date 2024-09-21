import 'package:flutter/cupertino.dart';

import '../consts/lists.dart';
import '../consts/strings.dart';

Widget transactionTileWidget(int index){
  return Container(
    decoration: BoxDecoration(
      color: primaryColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              //Transaction Icon
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.asset(
                  img1,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(
                width: 15,
              ),

              //Name & Price
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const Text(
                      paidTo,
                      style: TextStyle(
                          color: greyFont, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        //Name
                        Expanded(
                            child: Text(
                              transactionNameList[index],
                              style: const TextStyle(
                                color: whiteFont,
                                fontSize: 25,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            )),
                        const SizedBox(
                          width: 100,
                        ),
                        //Amount
                        Text(
                          transactionAmtList[index],
                          style: const TextStyle(
                              color: whiteFont,
                              fontSize: 25),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              //Date
              Text(
                transactionDateList[index],
                style: const TextStyle(
                    color: greyFont, fontSize: 20),
              ),
              const SizedBox(
                width: 100,
              ),

              //Debited from
              const Text(
                debitedFrom,
                style: TextStyle(
                    color: greyFont, fontSize: 20),
              ),
              const SizedBox(
                width: 10,
              ),

              //Bank Icon
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Container(
                  color: whiteFont,
                  child: Image.asset(
                    bankIcon,
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}