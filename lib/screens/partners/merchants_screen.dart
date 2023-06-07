import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/widgets/text_field_widget.dart';

class MerchantScreen extends StatefulWidget {
  const MerchantScreen({Key? key}) : super(key: key);

  @override
  State<MerchantScreen> createState() => _MerchantScreenState();
}

class _MerchantScreenState extends State<MerchantScreen> {
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
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [topWidget(), infoWidget()],
          ),
        ),
      ),
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
              formEntry("Skype"),
              SizedBox(
                height: 20,
              ),
              formEntry("Company Name"),
              SizedBox(
                height: 20,
              ),
              formEntry("Website"),
              SizedBox(
                height: 20,
              ),
              formEntry("Industry"),
              SizedBox(
                height: 20,
              ),
              formEntry("Total Payment Volume(TPV)"),
              SizedBox(
                height: 20,
              ),
              formEntry("Message"),
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
              SizedBox(height: 2,),
              Text("Exclusive contact for merchants"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget topWidget() {
    return Column(
      children: [
        SizedBox(
          height: height * 0.05,
        ),
        Text(
          "Global Payment Solution",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Text(
          "Process deposits and withdrawls in local currency",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        )
      ],
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
