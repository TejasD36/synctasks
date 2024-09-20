import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:synctasks/consts/strings.dart';
import 'package:synctasks/widgets/custom_button_widget.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {

    TextEditingController searchController = TextEditingController();

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
                const SizedBox(width: 10,),
                Center(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: whiteFont,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Icon(Icons.person_outline_rounded,color: headerColor, size: 40,),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 5,
              right: 0,
              child:  ClipRRect(
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
                Text(addAddress, style: TextStyle(color: whiteFont,fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Icon(Icons.arrow_drop_down, color: whiteFont,)
              ],
            ),
            Text(address, style: TextStyle(color: greyFont,fontSize: 20),),
          ],
        ),

        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.qr_code_scanner_outlined,color: whiteFont, size: 35,)
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.notifications_none_rounded,color: whiteFont, size: 35,)
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.help_outline_rounded,color: whiteFont, size: 35,)
          ),
          const SizedBox(width: 10,)
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
                    onChanged: (value){
                      setState(() {

                      });
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                        prefixIcon:const Icon(Icons.search_sharp,color: whiteFont,size: 30,),
                        hintText: searchBar,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      hintStyle: const TextStyle(color: greyFont,fontSize: 20)
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customButton(downloadStatement, Icons.expand_circle_down_outlined),
                      customButton(filters, Icons.filter_list_rounded),
                    ],
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
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
                        const SizedBox(width: 15,),

                        //Name & Price
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const Text(paidTo,style: TextStyle(color: greyFont, fontSize: 20),),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //Name
                                Text(transactionNameList[0],style: const TextStyle(color: whiteFont, fontSize: 25),),
                                const SizedBox(width: 100,),
                                //Amount
                                Text(transactionAmtList[0],style: const TextStyle(color: whiteFont, fontSize: 25),),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [

                        //Date
                        Text(transactionDateList[0],style: const TextStyle(color: greyFont, fontSize: 20),),
                        const SizedBox(width: 100,),

                        //Debited from
                        const Text(debitedFrom,style: TextStyle(color: greyFont, fontSize: 20),),
                        const SizedBox(width: 10,),

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
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_rupee_rounded),
            label: loan,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shield_outlined),
            label: insurance,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart_sharp),
            label: wealth,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows_sharp),
            label: history,
          ),
        ],
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
