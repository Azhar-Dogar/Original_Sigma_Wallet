import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/widgets/text_field_widget.dart';

class SendMoneyClass extends StatefulWidget {
  const SendMoneyClass({Key? key}) : super(key: key);

  @override
  State<SendMoneyClass> createState() => _SendMoneyClassState();
}

class _SendMoneyClassState extends State<SendMoneyClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Send Money",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin:const EdgeInsets.all(15),
            child: Card(
              elevation: 3,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Add Amount",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldWidget(hintText: "Enter Amount"),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldWidget(hintText: "Account Number"),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Text("Send")),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
