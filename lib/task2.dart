import 'package:flutter/material.dart';
import 'package:synctasks/consts/strings.dart';
import 'package:synctasks/widgets/custom_button_widget.dart';
import 'package:synctasks/widgets/transaction_tile_widget.dart';

import 'consts/lists.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: headerColor,
        toolbarHeight: 70,

        //Profile Image
        leading: Stack(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: whiteFont,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.person_outline_rounded,
                      color: headerColor,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 5,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Image.asset(
                  countryIcon,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ],
        ),

        //Add Address Section
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  addAddress,
                  style:
                      TextStyle(color: whiteFont, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: whiteFont,
                )
              ],
            ),
            Text(
              address,
              style: TextStyle(color: greyFont, fontSize: 20),
            ),
          ],
        ),

        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner_outlined,
                color: whiteFont,
                size: 35,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: whiteFont,
                size: 35,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.help_outline_rounded,
                color: whiteFont,
                size: 35,
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),

      body: Column(
        children: [
          Container(
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Search bar
                  TextFormField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        prefixIcon: const Icon(
                          Icons.search_sharp,
                          color: whiteFont,
                          size: 30,
                        ),
                        hintText: searchBar,
                      hintStyle: const TextStyle(color: greyFont, fontSize: 20),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: greyFont, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: whiteFont, width: 2.0), // Focused border color and width
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: greyFont, width: 1.0), // Enabled but not focused
                      ),
                  ),
                    style: const TextStyle(color: whiteFont, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customButton(
                          downloadStatement, Icons.expand_circle_down_outlined),
                      customButton(filters, Icons.filter_list_rounded),
                    ],
                  )
                ],
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: transactionNameList.length,
                  itemBuilder: (context, index) {

                    if(searchController.text.isEmpty){
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: transactionTileWidget(index),
                      );
                    }
                    else if(transactionNameList[index].toLowerCase().contains(searchController.text.toLowerCase())){
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: transactionTileWidget(index),
                      );
                    }
                    else{
                      return Container();
                    }
                  }),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavbarItemList,
        currentIndex: 4,
        type: BottomNavigationBarType.fixed,
        backgroundColor: bottomColor,
        unselectedItemColor: greyFont,
        unselectedLabelStyle: const TextStyle(color: greyFont),
        selectedItemColor: whiteFont,
        selectedLabelStyle: const TextStyle(color: whiteFont),
        iconSize: 30,
      ),
    );
  }
}
