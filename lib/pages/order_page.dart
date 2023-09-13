import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget{
  const OrderPage({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,size: 24,),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 15,top: 20),
                child: Text('Fill in your orders',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color.fromARGB(162, 0, 0, 0)),),

              ),
              Container(
                width: 310,
                margin: EdgeInsets.only(top: 15,left: 15),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
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
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "First Name"
                  ),
                ),
              ),
              Container(
                width: 310,
                margin: EdgeInsets.only(top: 15,left: 15),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
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
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Last Name"
                  ),
                ),
              ),
              Container(
                width: 310,
                margin: EdgeInsets.only(top: 15,left: 15),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
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
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email"
                  ),
                ),
              ),
              Container(
                width: 310,
                margin: EdgeInsets.only(top: 15,left: 15),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
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
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Address"
                  ),
                ),
              ),
              Container(
                width: 310,
                margin: EdgeInsets.only(top: 15,left: 15),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
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
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "City"
                  ),
                ),
              ),
              Container(
                width: 310,
                margin: EdgeInsets.only(top: 15,left: 15),
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
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
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Postal/Zip Code"
                  ),
                ),

              ),
              SizedBox(height: 18,),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                    color: Color(0xFFFFB608),
                    borderRadius: BorderRadius.circular(10)
                  ),
                child: Text('Order Now',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 1,color: Colors.white),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}