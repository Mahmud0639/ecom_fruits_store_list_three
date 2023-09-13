import 'package:flutter/material.dart';

import '../widgets/item_bottom_bar.dart';

class ItemPage extends StatelessWidget{
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 255, 230, 177),
            width: double.infinity,
            height: 250,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        InkWell(
                          onTap: (){

                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back,size: 24,),
                        ),
                      Container(
                        padding: EdgeInsets.all(10),
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
                        child: Icon(Icons.favorite,color: Color(0xFFFFB608),),
                      )
                    ],
                  ),
                ),
                Image.asset('assets/images/2.png',width: 145,height: 145,fit: BoxFit.contain,)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(13),
            margin: EdgeInsets.symmetric(horizontal: 20),
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
                Text('Item Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Column(
                  children: [
                    Text("\$21",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.amber),),
                    SizedBox(height: 5,),
                    Text('400gm',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(13),
            margin: EdgeInsets.symmetric(horizontal: 20),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Product details',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Text('This is the descriptoin of the product.This is the descripton of the product. This is the descriptioon of the product.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),)
              ],
            ),
          ),
          SizedBox(height: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 20),child: Text('Only For You',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
              SizedBox(height: 5,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=1; i<8; i++)
                    Container(
                      width: 90,
                      height: 90,
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(top: 8,bottom: 8,left: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 230, 177),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 5
                          )
                        ]
                      ),
                      child: Image.asset('assets/images/$i.png',fit: BoxFit.contain,),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: ItemBottomBar(),
    );
  }
}