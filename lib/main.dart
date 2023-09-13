import 'package:ecom_design_three_list/pages/cart_page.dart';
import 'package:ecom_design_three_list/pages/home_page.dart';
import 'package:ecom_design_three_list/pages/item_page.dart';
import 'package:ecom_design_three_list/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatefulWidget{
  const MyApp({super.key});



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF7F5F8),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>HomePage(),
        "itemPage":(context)=>ItemPage(),
        "cartPage":(context)=>CartPage(),
        "orderPage":(context)=>OrderPage()
      },
    );
  }
}