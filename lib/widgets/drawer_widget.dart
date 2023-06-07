import 'package:flutter/material.dart';
import 'package:original_sigma_wallet/screens/exchange_screen.dart';
import 'package:original_sigma_wallet/screens/history_screen.dart';
import 'package:original_sigma_wallet/screens/partners/affiliates_screen.dart';
import 'package:original_sigma_wallet/screens/partners/become_vip.dart';
import 'package:original_sigma_wallet/screens/partners/merchants_screen.dart';
import 'package:original_sigma_wallet/screens/partners/resellers_screen.dart';
import 'package:original_sigma_wallet/screens/press_screen.dart';
import 'package:original_sigma_wallet/screens/careers_screen.dart';
import 'package:original_sigma_wallet/screens/profile_screen.dart';
class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  late double width;
  late double height;
  bool astroPay = false;
  bool isPartners = false;
  bool promo = false;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    double margin = height*0.018;
    return Drawer(
      backgroundColor: Colors.blue,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const ProfileScreen()));},
                  child: titleText("Profile")),
              SizedBox(height:margin,),

            ],
          ),
        ),
      ),
    );
  }
  Widget promos(){
    return InkWell(
      onTap: () {
        setState(() {
          promo = !promo;
        });
      },
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            titleText("Promos"),
            (promo)
                ? const Icon(
              Icons.expand_more,
              color: Colors.white,
              size: 21,
            )
                : Container(
              margin: const EdgeInsets.only(
                right: 5,
              ),
              width: 12,
              child: const Divider(
                thickness: 2,
                color: Colors.white,
              ),
            )
            //
          ],
        ),
      ),
    );
  }
  Widget partners(){
    return InkWell(
      onTap: () {
        setState(() {
          isPartners = !isPartners;
        });
      },
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            titleText("Partners"),
            (isPartners)
                ? const Icon(
              Icons.expand_more,
              color: Colors.white,
              size: 21,
            )
                : Container(
              margin: const EdgeInsets.only(
                right: 5,
              ),
              width: 12,
              child: const Divider(
                thickness: 2,
                color: Colors.white,
              ),
            )
            //
          ],
        ),
      ),
    );
  }
  Widget astroWidget(){
    return InkWell(
      onTap: () {
        setState(() {
          astroPay = !astroPay;
        });
      },
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            titleText("AstroPay"),
            (astroPay)
                ? const Icon(
              Icons.expand_more,
              color: Colors.white,
              size: 21,
            )
                : Container(
              margin: const EdgeInsets.only(
                right: 5,
              ),
              width: 12,
              child: const Divider(
                thickness: 2,
                color: Colors.white,
              ),
            )
            //
          ],
        ),
      ),
    );
  }
  Widget promoExpanded(){
    return IntrinsicHeight(
      child: Row(
        children: [
          const VerticalDivider(
            width: 0,
            thickness: 1,color: Colors.white70,),
          SizedBox(width: width*0.05,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text("AstroWolves"),
              SizedBox(
                height: height * 0.02,
              ),
              text("Win A Super Vip Experience"),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget astroExpanded() {
    return IntrinsicHeight(
      child: Row(
        children: [
          const VerticalDivider(
            width: 0,
            thickness: 1,color: Colors.white70,),
          SizedBox(width: width*0.05,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(_)=>const ExchangeScreen()));
                  },
                  child: text("Currency Exchange")),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(_)=>const ProfileScreen()));

                  },
                  child: text("Profile")),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(_)=>CareersScreen()));
                  },
                  child: text("Careers")),
            ],
          ),
        ],
      ),
    );
  }
  Widget partnerExpanded() {
    return IntrinsicHeight(
      child: Row(
        children: [
          const VerticalDivider(
            width: 0,
            thickness: 1,color: Colors.white70,),
          SizedBox(width: width*0.05,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>MerchantScreen()));
                  },
                  child: text("Merchants")),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(_)=>BecomeVipClass()));
                  },
                  child: text("Become VIP")),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const ResellersScreen()));
                  },
                  child: text("Resellers")),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(_)=>const AffiliateScreen()));
                  },
                  child: text("Affiliates")),
            ],
          ),
        ],
      ),
    );
  }
  Widget text(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white70, fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
  Widget titleText(String text){
    return Text(
      text,
      style:const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w500),
    );
  }
}
