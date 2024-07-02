import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
          height: 50.0,
         margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
         decoration: kheaderdesktop,
         child: Row(children: [
          SiteLogo(onTap: (){},),
          const Spacer(),
          IconButton(onPressed: (){}, 
          icon:const Icon(Icons.menu)),
          const SizedBox(width: 15,)
         ],),
          );
  }
}