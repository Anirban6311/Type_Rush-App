import 'package:flutter/material.dart';
import 'package:type_rush/screens/HomeScreen.dart';
import 'package:type_rush/screens/create_room_screen.dart';
import 'package:type_rush/screens/join_room_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Setting the primary color to blue
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Setting the default button color to blue
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(), // default page
        '/create-room' : (context) => CreateRoomScreen(),
        '/join-room' : (context) => JoinRoomScreen()
      },
    );
  }
}
