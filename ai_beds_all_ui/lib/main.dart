
import 'package:ai_beds_all_ui/screens/home.dart';
import 'package:ai_beds_all_ui/screens/hotel_ui/hotel_home_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Beds Project',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget
 {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: HotelHomeScreen()
    );
  }
}

//HomeScreen-->login,pin,reg
//HotelHomeScreen-->view,list
//ChatHistoryScreen-->histrycht
