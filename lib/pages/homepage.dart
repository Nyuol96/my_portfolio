import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body:ListView(
        scrollDirection: Axis.horizontal,
        children: [
        //Main
        Container(
          height: 60.0,
          margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Colors.transparent,CustomColor.bgLight1]),borderRadius: BorderRadius.circular(100)),
          child:Row(children: [Text('nG'),
          Spacer(),
          for(int i=0;i<5;i++)
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(onPressed: (){}, child: Text('Button')),
          )],),
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