import 'package:flutter/material.dart';

class HomePagePosts extends StatelessWidget{
  const HomePagePosts({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 20),
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            alignment: Alignment.centerLeft,
            child: Text('Flash Sale',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 15,),
          GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            for(int i=1; i<9; i++)
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF7F5F8),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5
                  )
                ]
              ),

              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "itemPage");
                    },
                    child: Image.asset("assets/images/$i.png",width: 100,height: 110,),
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Text('Item Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Text('\$22',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFFFFB608)),),
                          SizedBox(width: 5,),
                          Text('/ 1KG',style: TextStyle(fontSize: 18),),
                          Spacer(),
                          Icon(Icons.favorite_border,color: Colors.red,)
                        ],
                      )
                    ],
                  )
                ],
              ),

            )
          ],)
        ],
      ),
    );
  }
}
