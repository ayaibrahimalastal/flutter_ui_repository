import 'package:flutter/material.dart';

class custom_scaffold extends StatelessWidget {
  const custom_scaffold({super.key, required this.child, required this.widget});
  final Widget child;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        leading: widget,
      ),
      extendBodyBehindAppBar: true,

      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg1.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
