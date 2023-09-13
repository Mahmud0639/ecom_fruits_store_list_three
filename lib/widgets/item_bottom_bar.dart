import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomBar extends StatelessWidget{
  const ItemBottomBar({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 22,vertical: 12),
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
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                color: Color(0xFFF7CA0F),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5
                  )
                ]
              ),
              child: Icon(CupertinoIcons.cart_fill,size: 24,color: Colors.white,),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  color: Color(0xFFF7CA0F),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5
                    )
                  ]
              ),
              child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 1),),
            ),
          )
        ],
      ),
    );
  }
}