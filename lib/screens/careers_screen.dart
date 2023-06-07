import 'package:flutter/material.dart';

class CareersScreen extends StatefulWidget {
  const CareersScreen({Key? key}) : super(key: key);

  @override
  State<CareersScreen> createState() => _CareersScreenState();
}

class _CareersScreenState extends State<CareersScreen> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Original Sigma Wallet",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.2,
          ),
          buttons(),
          SizedBox(
            height: height * 0.05,
          ),
          aboutUs()
        ],
      ),
    );
  }

  Widget buttons() {
    return Column(
      children: [
        Text(
          "#WeBreakLimits",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Container(
            width: width * 0.5,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Text("Connect"))),
        Container(
            width: width * 0.5,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Text("Job openings")))
      ],
    );
  }

  Widget aboutUs() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            "About us",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: height*0.02,),
          Text(
              "We are more than 230 people from 16 countries around the world to make sure everyone can pay internationally,wherever they are and with whatever payment method they know locally",style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
