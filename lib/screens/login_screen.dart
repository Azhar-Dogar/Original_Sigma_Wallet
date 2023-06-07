import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/screens/dashboard.dart';
import 'package:original_sigma_wallet/widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Log In",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              form()
            ],
          ),
        ),
      ),
    );
  }

  Widget form() {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           TextFieldWidget(hintText: "User Name",),
          const SizedBox(
            height: 20,
          ),

           TextFieldWidget(hintText: "Password",),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text("Forget Password?",style: TextStyle(color:Color.fromRGBO(6,170,249, 1)),),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.065,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(_)=>const DashBoardScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color.fromRGBO(6,170,249, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                child: const Text("Log In",style: TextStyle(fontSize: 18),)),
          )
        ],
      ),
    );
  }
}
