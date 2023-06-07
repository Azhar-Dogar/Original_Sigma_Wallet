import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/widgets/text_field_widget.dart';

class AddFundScreen extends StatefulWidget {
  const AddFundScreen({Key? key}) : super(key: key);

  @override
  State<AddFundScreen> createState() => _AddFundScreenState();
}

class _AddFundScreenState extends State<AddFundScreen> {
  List<String> data = ["100", "200", "300", "400", "500", "600", "700", "800"];
  int buttonValue = 0;
  String unit = "ARG";
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
          "Add Funds",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "select currency and amount to top up",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buttons(),
                  const SizedBox(
                    height: 20,
                  ),
                  builderWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  actionsPadding: EdgeInsets.zero,
                                  title: const Text(
                                    "Add Amount",
                                  ),
                                  content:
                                      TextFieldWidget(hintText: "Enter Amount"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {Navigator.pop(context);},
                                      child: const Text("cancel",style: TextStyle(color:Color.fromRGBO(6,170,249, 1)),),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("save",style: TextStyle(color: Color.fromRGBO(6,170,249, 1)),),
                                    ),
                                  ],
                                ));
                      },
                      child: const Text("Enter an different amount",
                          style: TextStyle(fontSize: 18, color: Color.fromRGBO(6,170,249, 1)))),
                ],
              )),
        ),
      ]),
    );
  }

  Widget buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.37,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonValue = 0;
                    unit = "ARG";
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: (buttonValue == 0)
                        ? Colors.black
                        : Colors.grey.shade400),
                child: const Text("ARG"))),
        const SizedBox(
          width: 10,
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.37,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonValue = 1;
                    unit = "USD";
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: (buttonValue == 1)
                        ? Colors.black
                        : Colors.grey.shade400),
                child: const Text("USD")))
      ],
    );
  }

  Widget builderWidget() {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 0.9,
          crossAxisSpacing: 8,
          mainAxisSpacing: 23),
      itemCount: data.length,
      itemBuilder: (BuildContext ctx, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                "$unit ${data[index]}",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        );
      },
    );
  }
}
