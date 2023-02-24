import 'package:flutter/material.dart';

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Home',
          style: TextStyle(
            fontSize: 35,
          ),),
      ),
      body: ListView.separated(
          itemBuilder: (context, index){
            if(index == 0 )
              return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 140,
                    width: 90,
                    child: ListView.separated(itemBuilder: (BuildContext context, int index)
                    {
                      return Container(
                        clipBehavior: Clip.antiAlias
                        ,height: 140,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(15),
                        )
                        ,alignment: Alignment.bottomCenter,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset('assets/FB_IMG_15931112691929121.jpg',
                              height: 140,
                              width: 90,
                              fit: BoxFit.cover,),
                            Text('Owner',style: TextStyle(
                                color: Colors.white
                                ,fontSize: 20
                            ),),
                            Positioned(child: Icon(Icons.account_circle_outlined,
                              color: Colors.white,
                              size: 28,),
                              top:5 ,
                              left:5 ,)
                          ],
                        ),
                      );
                    },
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10);
                      }, itemCount: 20,
                    )),
              );
              return Container(
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Icon(Icons.account_circle,
                    size: 45,
                    color: Colors.black,),
                  Positioned(
                    child: Text('Owner',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                    ),),
                    top: 8,
                    left: 48,
                  ),
                  Positioned(child: Text('5h',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14
                    ),),

                    top: 25,
                    left: 55,
                  ),
                  Positioned(child:
                  // Image.asset(''),
                  Icon(Icons.public,
                    size: 17,),
                    top: 22,
                    left: 70,
                  ),
                  Positioned(child: Text(
                    '500 Comments',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                    bottom: 10,
                    right: 10,),
                  Positioned(child: Text(
                    '500',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                    bottom: 10,
                    left: 10,
                  ),
                  Positioned(child: SizedBox(child: Image.asset('assets/WhatsApp Image 2022-11-19 at 11.54.27 AM.jpeg',)
                    ,height: 20,width: 60,)
                    ,bottom: 10, left: 25,),
                  Positioned(child: Text('My Post',style: TextStyle(color: Colors.black,
                      fontSize: 30),),
                    left: 20,top: 50,)

                ],
              ),
            );
          },
          separatorBuilder: (context, index){
            if(index == 0)
              return SizedBox();
            return SizedBox(
              height: 55,
              child: Container(
                  decoration: BoxDecoration(
                      border : Border.symmetric(horizontal: BorderSide(color: Colors.black,
                          width: 1)))
                  ,child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(

                          children:[
                            SizedBox(width: 10,),
                            Image.asset('assets/WhatsApp Image 2022-11-19 at 11.54.26 AM.jpeg',

                              width: 20,
                              height: 20,),
                            SizedBox(width: 5),

                            Text('Like',style: TextStyle(color: Colors.black,fontSize: 18),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                          children:[
                            SizedBox(width: 10,),
                            Image.asset('assets/WhatsApp Image 2022-11-19 at 11.54.26 AM (1).jpeg',

                              width: 20,
                              height: 20,),
                            SizedBox(width: 6,),
                            Text('Comment',style: TextStyle(color: Colors.black,fontSize: 15),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                          children:[
                            SizedBox(width: 10,),
                            Image.asset('assets/WhatsApp Image 2022-11-19 at 11.54.27 AM (1).jpeg',

                              width: 20,
                              height: 20,),
                            SizedBox(width: 6,),
                            Text('share',style: TextStyle(color: Colors.black,fontSize: 15),
                            ),
                          ]
                      ),
                    ),
                  ),

                ],
              )
              ),
            );
          },
          itemCount: 20
      ),
    );
  }
}
