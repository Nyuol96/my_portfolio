import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Maindesktop extends StatelessWidget {
  const Maindesktop({super.key});

  @override
  Widget build(BuildContext context) {
      final screenSize=MediaQuery.of(context).size;
      final screenwidth=screenSize.width;
       final screenheight=screenSize.height;
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: screenheight/1.2,
              constraints: const BoxConstraints(minHeight: 350.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text("Hi,\ni'm nyUol gitbUong\na Flutter Developer",style: TextStyle(fontSize: 30.0,
              fontWeight: FontWeight.bold,
              height: 1.5,
              color: CustomColor.whitePrimary),),
              const SizedBox(height: 15,),
              SizedBox(
                width: 250,
                child: ElevatedButton(onPressed: (){}, child: const Text('Get in Touch'),)),
             ],),
              Image.asset('Assets/nyuol.jpeg',
              width: screenwidth/2,),
             ],),);
  }
}