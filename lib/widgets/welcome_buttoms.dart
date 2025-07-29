import 'package:flutter/material.dart';

class welcome_buttoms extends StatelessWidget {
  const welcome_buttoms({
    super.key,
    required this.buttonText,
    required this.color,
    required this.pageName,
   required this.textColor,
  });
  final String? buttonText;
  final Color? color;
  final String? pageName;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        textColor: textColor,
        height: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(pageName!);
        },
        child: Text(
          "${buttonText!}",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        color: color,
        elevation: 0,
      ),
    );
  }
}
