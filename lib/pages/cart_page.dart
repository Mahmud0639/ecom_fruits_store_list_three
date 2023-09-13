import 'package:flutter/material.dart';

import '../widgets/cart_bottom_bar.dart';
import '../widgets/cart_item_sample.dart';

class CartPage extends StatefulWidget{
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  bool checkedValue = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Row(
            children: [
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,size: 24,)),
              SizedBox(width: 15,),
              Text('My Cart',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFFFFB608)),),
              Spacer(),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5
                    )
                  ]
                ),
                child: Icon(Icons.notifications,size: 24,color: Color(0xFFFFB608),),
              )
            ],
          ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Column(
              children: [
                CheckboxListTile(activeColor: Color(0xFFFFB608),title: Text('Select all items',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),value: checkedValue, onChanged: (newValue){
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                  //if we don't use below line of code then it will show the general way
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Divider(height: 30,thickness: 1,),
                CartItemSample(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sub-Total',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('\$22',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(162, 0, 0, 0)),),
                  ],
                ),
                Divider(height: 15,thickness: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Fee',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('\$12',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(162, 0, 0, 0)),),
                  ],
                ),
                Divider(height: 15,thickness: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Discount',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('-\$10',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),),
                  ],
                ),
                Divider(height: 15,thickness: 1,)
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomBar(),
    );
  }
}