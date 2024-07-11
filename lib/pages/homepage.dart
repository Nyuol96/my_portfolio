import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/maindesktop.dart';
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
      final screenheight=screenSize.height;
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
           if(constraints.maxWidth>kMindesktopwidth)
             const Maindesktop()
          else const MainMobile(),
             //Skills
            Container(
              width:screenwidth,
              padding:const EdgeInsets.fromLTRB(25, 20, 25, 60),
              height: 500,
             color: CustomColor.bgLight1,
             child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              const Text('What I can Do!',
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary),
              ),
              //platforms
              Row(
                children: [
                  Wrap(
                    children: [
                      Container(
                        width: 200,
                        decoration: BoxDecoration(color: CustomColor.bgLight2,
                        borderRadius: BorderRadius.circular(5)),
                        child: ListTile(
                          leading: Image.asset(''),
                          title: Text(''),
                        ),
                      )
                    ],
                  )
                ],
              )
              ],
             ),
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