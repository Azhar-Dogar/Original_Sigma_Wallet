import 'package:flutter/material.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({Key? key}) : super(key: key);

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
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
          "Currency Exchange",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Indicate the amount to exchange",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              cardWidget("Sell", "ARG"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage(
                      "assets/logo/arrow.jpg",
                    ),
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                ],
              ),
              cardWidget("Buy", "USD"),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromRGBO(6,170,249, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text("CONFIRM")),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cardWidget(String title, String currency) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  currency,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                    child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                            isDense: true,
                            //focusedBorder: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 5)))),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Available: $currency 0"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget arrowWidget() {
    return Container(
      child: Row(
        children: const [Icon(Icons.arrow_upward), Icon(Icons.arrow_downward)],
      ),
    );
  }
}
