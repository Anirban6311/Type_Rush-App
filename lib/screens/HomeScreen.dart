import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:type_rush/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 600,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create / Join a room to play!!",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: size.height*0.1,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 CustomButton(
                   text: "Create",
                   onTap: ()=> Navigator.pushNamed(context, '/create-room'),
                   isHome: true,
                 ),
                 CustomButton(
                   text: "Join",
                   onTap: ()=> Navigator.pushNamed(context, '/join-room'),
                   isHome: true,
                 ),
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
