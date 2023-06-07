import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/widgets/text_field_widget.dart';

class BecomeVipClass extends StatefulWidget {
  const BecomeVipClass({Key? key}) : super(key: key);

  @override
  State<BecomeVipClass> createState() => _BecomeVipClassState();
}

class _BecomeVipClassState extends State<BecomeVipClass> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          //0508524356
          title: const Text(
            "Original Sigma Wallet",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
          )),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                firstWidget(),
                infoWidget()
              ],
            )),
      ),
    );
  }

  Widget firstWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Become a VIP and start enjoying the special benefits",
          style: TextStyle(fontSize: 42, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Text(
          "The best deal for our VIP customers.",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Container(
            width: width * 0.4,
            height: height * 0.06,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text("Become VIP",style: TextStyle(fontSize: 16),)))
      ],
    );
  }
  Widget infoWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Card(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text("Lets get started-Contact us",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
              SizedBox(height:height*0.03,),
              formEntry("First/Last name"),
              SizedBox(
                height: 20,
              ),
              formEntry("Email"),
              SizedBox(
                height: 20,
              ),
              formEntry("Mobile Number"),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: width,
                  height: height * 0.07,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Text("SUBMIT",style: TextStyle(fontSize: 20),))),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget formEntry(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title + ":",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
       // TextFieldWidget()
      ],
    );
  }
}
