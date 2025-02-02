import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isHome;

  const CustomButton({super.key, required this.text, required this.onTap, this.isHome=false}); /// if the user do not pass the parameter then it is by default false

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;

    return ElevatedButton(
        onPressed: onTap,
        child: Text(
          text,
          selectionColor: Colors.blue,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white
          ),

        ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(!isHome? width: width/5, 50)
      ),
    );
  }
}
