
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
      final screenSize=MediaQuery.of(context).size;
      final screenwidth=screenSize.width;
      final screenheight=screenSize.height;
    return  Container(
              margin: EdgeInsets.symmetric(horizontal: 40,
              vertical: 30.0),
              height: screenheight,
            constraints: const BoxConstraints(minHeight: 500.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              ShaderMask(
                shaderCallback: (bounds){
                  return LinearGradient(colors: [CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6)]).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Image.asset('Assets/nyuol.jpeg',
                width: screenwidth,),
              ),
            const  SizedBox(height: 30.0,),
               const Text("Hi,\ni'm nyUol gitbUong\na Flutter Developer",
               style: TextStyle(fontSize: 24.0,
              fontWeight: FontWeight.bold,
              height: 1.5,
              color: CustomColor.whitePrimary),),
              const SizedBox(height: 15,),
              SizedBox(
                width: 180,
                child: ElevatedButton(onPressed: (){}, child: const Text('Get in Touch'),)),
          
            ],),);
  }
}