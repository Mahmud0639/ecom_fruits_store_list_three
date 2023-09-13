import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatelessWidget{
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(Icons.home,color: Color(0xFFF7CA0F),size: 24,),
              Text('Home',style: TextStyle(fontSize: 18,color: Color(0xFFF7CA0F)),)
            ],
          ),
          Column(
            children: [
              Icon(Icons.search,color: Color(0xFFF7CA0F),size: 24,),
              Text('Explore',style: TextStyle(fontSize: 18,color: Color(0xFFF7CA0F)),)
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "cartPage");
            },
            child: Column(
              children: [
                Icon(CupertinoIcons.cart,color: Color(0xFFF7CA0F),size: 24,),
                Text('My Cart',style: TextStyle(fontSize: 18,color: Color(0xFFF7CA0F)),)
              ],
            ),
          ),
          Column(
            children: [
              Icon(Icons.person,color: Color(0xFFF7CA0F),size: 24,),
              Text('Account',style: TextStyle(fontSize: 18,color: Color(0xFFF7CA0F)),)
            ],
          )

        ],
      ),
    );
  }
}