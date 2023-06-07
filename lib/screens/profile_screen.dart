import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/widgets/text_field_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 40,
                      child:
                          Image(image: AssetImage("assets/logo/profile.jpg")),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("User Name"),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, bottom: 6),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (_) => dialogueBox("User Name"));
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.edit,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //rgb(6,170,249)
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      details(
                          name: "Email Address",
                          value: "test@gmail.com",
                          icon: Icons.email,
                          onTap: () {
                          }),
                      details(
                          name: "Date of Birth",
                          value: "wewe",
                          icon: Icons.cake,
                          edit: Icons.edit,
                          onTap: () async {
                            showDialog(
                                context: context,
                                builder: (_) => dialogueBox("Date of Birth"));
                          }),
                      details(
                        name: "Country",
                        value: "Argentina",
                        icon: Icons.public,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget dialogueBox(String title) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      title: Center(child: Text(title)),
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFieldWidget(hintText: title),
      ),
      actions: [
        TextButton(onPressed: () {}, child: const Text("cancel")),
        TextButton(onPressed: () {}, child: const Text("save"))
      ],
    );
  }

  Widget details({
    required String name,
    required String value,
    required IconData icon,
    void Function()? onTap,
    IconData? edit,
  }) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color:const Color.fromRGBO(6,170,249, 1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    value,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 21,
              left: 2,
            ),
            child: InkWell(
                onTap: onTap,
                child: Icon(
                  edit,
                  size: 13,
                )),
          )
        ],
      ),
    );
  }
}
