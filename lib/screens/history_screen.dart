import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.black,
          centerTitle: true,
        //0508524356
          title:  const Text(
            "Original Sigma Wallet",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600,color: Colors.white),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleWidget(),
          SizedBox(
            height: height * 0.05,
          ),
          Image(
            image: const AssetImage("assets/logo/down.png"),
            width: width,
          ),
          SizedBox(
            height: height * 0.05,
          ),
          description()
        ],
      ),
    );
  }

  Widget description() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Original Sigma Wallet",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
          SizedBox(height:10 ,),
          Text(
            "We started writing our history in 2009 with our product, AstroPay card",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget titleWidget() {
    return Container(
      color: Colors.blue,
      height: height * 0.2,
      width: width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "History",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              height: 3,
              width: width * 0.15,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
