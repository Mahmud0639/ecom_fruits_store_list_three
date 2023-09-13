import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget{
  const CartBottomBar({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 110,
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 8),child: Row(
            children: [
              Icon(Icons.discount,color: Color(0xFFFFB608),),
              SizedBox(width: 8,),
              Text('Use promo coupons',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Color.fromARGB(162, 0, 0, 0)),)
            ],
          ),),
          Divider(height: 10,thickness: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(162, 0, 0, 0)),),
                  SizedBox(height: 8,),
                  Text('\$120',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFFFFB608)),)
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'orderPage');
                },
                child: Container(
                  alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFB608),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Check out',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              )

            ],

          )
        ],
      ),
    );
  }
}