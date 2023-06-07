import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/screens/partners/more_information.dart';

class ResellersScreen extends StatefulWidget {
  const ResellersScreen({Key? key}) : super(key: key);

  @override
  State<ResellersScreen> createState() => _ResellersScreenState();
}

class _ResellersScreenState extends State<ResellersScreen> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            titleWidget(),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: messageWidget()),
            SizedBox(
              height: height * 0.05,
            ),
            mainBenefits(),
            buttons()
          ],
        ),
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
              "Resellers",
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

  Widget messageWidget() {
    return Column(
      children: [
        Text(
          "We invite you to learn about the range of possibilities Sigma Wallet offers its authorized official resellers",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Container(
          height: height * 0.005,
          width: width * 0.2,
          color: Colors.blue,
        )
      ],
    );
  }

  Widget mainBenefits() {
    return Column(
      children: [
        const Text(
          "Main Benefits",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        benefits("Resellers panel",
            "Self-managing panel that allows you to create Sigma Wallet Cards for any amount, in the desired currency and send them instantly tp your customers."),
        SizedBox(height: height*0.02,),
        benefits("Manage your time",
            "Being your own boss will allow you to assign and monitor sub-resellers to create your own sales team"),
        SizedBox(height: height*0.02,),
      ],
    );
  }

  Widget benefits(String title, String description) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: width,
      child: Card(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/logo/down.png"),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            )
          ],
        ),
      ),
    );
  }
  Widget buttons(){
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(_)=>const MoreInformation()));
          },
          child: Container(
          decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.blue),borderRadius: BorderRadius.circular(20)),
          width: width*0.5,
          height: height*0.05,
          child: Center(child: Text("More information")),),
        ),
       SizedBox(height: height*0.02,),
       Container(
         width: width*0.5,
         height: height*0.05,
         child: ElevatedButton(onPressed:(){},style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      )), child: Text("Contact",)),
       ),
        SizedBox(height: height*0.02,)
      ],
    );
  }
}
