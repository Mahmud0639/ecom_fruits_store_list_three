import 'package:flutter/material.dart';

class CartItemSample extends StatefulWidget{
  const CartItemSample({super.key});

  @override
  State<CartItemSample> createState() => _CartItemSampleState();
}

class _CartItemSampleState extends State<CartItemSample> {

  bool checkedValue = false;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        for(int i = 1; i<4; i++)
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
          child: Column(
           children: [
              Row(
               children: [
                 Checkbox(activeColor: Color(0xFFFFB608),value: checkedValue, onChanged: (newValue){
                   setState(() {
                     checkedValue = newValue!;
                   });
                 }),
                 Container(
                   width: 70,
                   height: 70,
                   margin: EdgeInsets.only(left: 5),
                   padding: EdgeInsets.all(5),
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
                 ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                   child: Column(
                     children: [
                       Text('Item Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(162, 0, 0, 0)),),
                       SizedBox(height: 8,),
                       Row(
                         children: [
                           Text('\$21',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFFFFB608)),),
                           SizedBox(width: 5,),
                           Text('/ 5KG',style: TextStyle(fontSize: 15),)
                         ],
                       )
                     ],
                   ),),
                 Spacer(),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Icon(Icons.delete,size: 24,color: Colors.red,),
                     SizedBox(height: 10,),
                     Row(
                       children: [
                         Container(
                           width: 25,
                           height: 25,
                           alignment: Alignment.center,
                           decoration: BoxDecoration(
                               color: Color(0xFFFFB608),
                               borderRadius: BorderRadius.circular(5)
                           ),
                           child: Text('-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                         ),
                         Container(
                           margin: EdgeInsets.symmetric(horizontal: 10),
                           child: Text('01',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(162, 0, 0, 0)),),

                         ),
                         Container(
                           width: 25,
                           height: 25,
                           alignment: Alignment.center,
                           decoration: BoxDecoration(
                               color: Color(0xFFFFB608),
                               borderRadius: BorderRadius.circular(5)
                           ),
                           child: Text('+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                         ),
                       ],
                     )
                   ],
                 )
               ],
             ),
             SizedBox(
               height: 20,

             ),
             Divider(thickness: 1,)
           ],
          ),




        ),
      ],
    );
  }
}