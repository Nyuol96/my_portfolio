import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/skill_items.dart';
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
              style: TextStyle(
                fontSize: 24,
               fontWeight: FontWeight.bold,
               color: CustomColor.whitePrimary),
              ),
              const SizedBox(height: 50,),
              //platforms
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 450,
                    ),
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: [
                        for(int i=0;i<platformItems.length;i++)
                        Container(
                          width: 200,
                          decoration: BoxDecoration(color: CustomColor.bgLight2,
                          borderRadius: BorderRadius.circular(5)),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10),
                           
                            leading: Image.asset(platformItems[i]["img"],
                            width:20,),
                            title: Text(platformItems[i]["title"]),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 50,),
                  //skills
                  Flexible(
                    child: ConstrainedBox(
                       constraints: const BoxConstraints(
                       maxWidth: 500,
                    ),
                      child: Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          for(int i=0;i<skillItems.length;i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16),
                          child: Chip(
                              backgroundColor:CustomColor.bgLight2,
                            label: Text(skillItems[i]["title"]), 
                            avatar: Image.asset(skillItems[i]["img"]),),
                        )
                      ],),
                    ),
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