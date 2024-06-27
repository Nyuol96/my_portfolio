import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        scrollDirection: Axis.horizontal,
        children: [
        //Main
        Container(
          height: 500,
          width: double.maxFinite,
          color: Colors.blueGrey,
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