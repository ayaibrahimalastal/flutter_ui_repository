import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Logo extends StatelessWidget {
  
   Logo({super.key,required this.LogoName,required this.degree_of_circular});
String ?LogoName;
double degree_of_circular;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                            padding: EdgeInsets.all(0),
                            height: 45,
                            minWidth: 45,
                           splashColor: const Color.fromARGB(255, 223, 222, 222),
                           
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(degree_of_circular)),
                           onPressed: () {
                             
                           },
                            child: Image.asset(
                               LogoName!,
                            height: 28,
                            width: 28,
                            alignment: Alignment.center,
                            
                            ),
                          );
  }
}