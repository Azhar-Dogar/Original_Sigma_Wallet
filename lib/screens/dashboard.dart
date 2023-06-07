import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/screens/add_fund_screen.dart';
import 'package:original_sigma_wallet/screens/exchange_screen.dart';
import 'package:original_sigma_wallet/screens/profile_screen.dart';
import 'package:original_sigma_wallet/screens/send_money.dart';
import 'package:original_sigma_wallet/widgets/drawer_widget.dart';

import '../widgets/drop_down_widget.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  late double width;
  late double height;
  final List<String> items = ["ARG", "USD"];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      //drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(6,170,249, 1),
        centerTitle: true,
        title: const Text(
          "Hi,user name",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        actions:  [
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)=>const ProfileScreen()));
              },
              icon: const Icon(Icons.person))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            children: [
              addMoney(),
              const SizedBox(height: 20,),
              exchangeMoney(),
              const SizedBox(height: 20,),
              sendMoney()
            ],
          ),
        ),
      ),
    );
  }
  Widget sendMoney(){
    return Card(
      elevation: 3,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "ARG",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10,),
                Text("&",style: TextStyle(fontSize: 20),),
                SizedBox(width: 10,),
                Text(
                  "USD",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(_)=>const SendMoneyClass()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromRGBO(6,170,249, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Send Money")),
            )
          ],
        ),
      ),
    );
  }
  Widget exchangeMoney(){
    return Card(
      elevation: 3,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "ARG",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10,),
                Icon(Icons.currency_exchange),
                SizedBox(width: 10,),
                Text(
                  "USD",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(_)=>const ExchangeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromRGBO(6,170,249, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Exchange Money")),
            )
          ],
        ),
      ),
    );
  }
  Widget addMoney(){
    return Card(
      elevation: 3,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Sigma Wallet balance",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "ARG 0",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(_)=>const AddFundScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromRGBO(6,170,249, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Add money")),
            )
          ],
        ),
      ),
    );
  }
  Widget dropDownWidget() {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: const Text("ARG"),
        // Row(
        //   children: const [
        //     SizedBox(
        //       width: 15,
        //     ),
        //     Expanded(
        //       child: Text(
        //         'Top Attractions',
        //         style: TextStyle(
        //           fontSize: 16,
        //           color: Colors.grey,
        //         ),
        //         overflow: TextOverflow.ellipsis,
        //       ),
        //     ),
        //   ],
        // ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        icon: const Icon(
          Icons.arrow_forward_ios_outlined,
        ),
        iconSize: 14,
        iconEnabledColor: Colors.grey,
        iconDisabledColor: Colors.grey,
        buttonHeight: 50,
        buttonWidth: MediaQuery.of(context).size.width * 0.95,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.black26,
          ),
          color: Colors.white,
        ),
        buttonElevation: 2,
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        dropdownWidth: MediaQuery.of(context).size.width,
        dropdownPadding: const EdgeInsets.all(12),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(40),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(-20, 0),
      ),
    );
  }
}
