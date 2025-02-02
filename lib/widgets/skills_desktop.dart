import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return      Row(
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
                            width:26,),
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
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: Wrap(
                            spacing: 5.0,
                            runSpacing: 5.0,
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
                  ),
                    
                  
                ],
              );
  }
}