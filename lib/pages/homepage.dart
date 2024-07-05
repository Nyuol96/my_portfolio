import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/size.dart';
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
    final screenSize=MediaQuery.of(context).size;
    final screenwidth=screenSize.width;
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key:ScaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer:constraints.maxWidth>kMindesktopwidth?null :const Drawer(),
          body:ListView(
            scrollDirection: Axis.vertical,
            children: [
            // Main
            if(constraints.maxWidth>kMindesktopwidth)
          const HeaderDesktop() else
         HeaderMobile(
          onLogoTap: () {
    
          },
          onMenuTap: () {
            ScaffoldKey.currentState?.openEndDrawer();
          },
         ),
             Container(child: Row(children: [
             Column(children: [
              Text("Hi,\ni'm nyUol gitbUong\na Flutter Developer"),
              ElevatedButton(onPressed: (){}, child: const Text('Get in Touch'),),
             ],),
              Image.asset('Assets/nyuol.jpeg',
              width: screenwidth,),
             ],),),
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
    );
  }
}