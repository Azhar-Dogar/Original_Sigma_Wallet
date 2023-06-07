import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/widgets/text_field_widget.dart';

class MoreInformation extends StatefulWidget {
  const MoreInformation({Key? key}) : super(key: key);

  @override
  State<MoreInformation> createState() => _MoreInformationState();
}

class _MoreInformationState extends State<MoreInformation> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold( appBar: AppBar(
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
              const SizedBox(
                height: 10,
              ),
              const Text("Contact an advisor",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
              SizedBox(height: height*0.01,),
              const Text("Become an Sigma Wallet official distributor",style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
              SizedBox(height: height*0.01,),
              const Text("Request more information here",style: TextStyle(fontSize: 16),),
              SizedBox(height:height*0.02,),
              formEntry("Name"),
              const SizedBox(
                height: 20,
              ),
              formEntry("Email"),
              const SizedBox(
                height: 20,
              ),
              formEntry("Mobile Number"),

              const SizedBox(
                height: 20,
              ),
              formEntry("Country"),
              const SizedBox(
                height: 20,
              ),
              formEntry("Total Payment Volume(TPV)"),
              const SizedBox(
                height: 20,
              ),
              formEntry("Message"),
              const SizedBox(
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
                      child: const Text("Send Now",style: TextStyle(fontSize: 20),))),
              const SizedBox(
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
        const Text(
          "Become an official distributor",
          style: TextStyle(fontSize: 42, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        const Text(
          "Sell Sigma Wallet Cards worldwide easy and safe",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: height * 0.01,
        ),
      ],
    );
  }

  Widget formEntry(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title:",
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 5,
        ),
        //const TextFieldWidget()
      ],
    );
  }
  }
