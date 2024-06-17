import 'package:flutter/material.dart';
import 'package:type_rush/widgets/custom_button.dart';
import 'package:type_rush/widgets/custom_text_field.dart';

class JoinRoomScreen extends StatefulWidget {
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _gameIdController=TextEditingController();
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: 600
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Create Room",
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
                SizedBox(
                  height: size.height*0.08,
                ),
                CustomTextField(
                    controller: _nameController,
                    hintText: 'Enter your nickname'),
                SizedBox(height: 20,),
                CustomTextField(
                    controller: _gameIdController,
                    hintText: 'Enter Game Id'),
                SizedBox(height: 40,),
                CustomButton(
                  text: "Create",
                  onTap: (){},
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
