import 'package:flutter/material.dart';
import 'package:type_rush/utils/socket_client.dart';
import 'package:type_rush/utils/socket_methods.dart';
import 'package:type_rush/widgets/custom_button.dart';
import 'package:type_rush/widgets/custom_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final SocketMethods _socketMethods=SocketMethods();


  //to avoid memory leaks

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Create Room",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hintText: 'Enter your nickname'),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                text: "Create",
                onTap: ()=> _socketMethods.createGame(_nameController.text), // not testing() bcoz we are not storing the address of the function
              )
            ],
          ),
        ),
      ),
    ));
  }
}
