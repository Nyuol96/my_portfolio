import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ScaffoldKey =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:ScaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: Drawer(
         backgroundColor: CustomColor.scaffoldBg,
         child: ListView(children: [
          
         ],),
      ),
      body:ListView(
        scrollDirection: Axis.horizontal,
        children: [
        //Main
      // HeaderDesktop(),
     HeaderMobile(
      onLogoTap: () {
        
      },
      onMenuTap: () {
        ScaffoldKey.currentState?.openEndDrawer();
      },
     ),
         //Skills
        Container(
          height: 500,
          width: double.maxFinite,
          ),
              //Contact
        Container(
          height: 500,
          width: double.maxFinite,
          color: Colors.blueGrey,),
              //Footer
        Container(
          height: 500,
          width: double.maxFinite,
          )
      ],),
    );
  }
}