import 'dart:async';

import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/screens/dashboard.dart';
import 'package:original_sigma_wallet/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateFunction();
  }

  navigateFunction() async {
    Timer(
      const Duration(seconds: 4),
      () async => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: const AssetImage("assets/logo/app_logo.jpg"),
                  width: MediaQuery.of(context).size.width * 0.5,
                )),
            const SizedBox(height: 40,),
            const Text(
              "Original Sigma Wallet",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
