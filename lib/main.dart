import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Home',
            style: TextStyle(
              fontSize: 35,
            ),),
        ),
        body: log()


        // body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 4,
        //   crossAxisSpacing: 3,
        // childAspactRatio : 2,
        //   ),
        //   itemCount: 100,
        //   itemBuilder: (context, index){
        //   return Container(
        //               height: 150,
        //               width: 200,
        //               decoration: BoxDecoration(
        //                 color: Colors.deepPurple[200],
        //                 borderRadius: BorderRadius.circular(10),
        //                 gradient: LinearGradient(
        //                   colors: [
        //                     Colors.blueGrey,
        //                     Colors.blue,
        //                   ]
        //                 )
        //               ),
        //
        //             );
        //
        //   },
        //
        // ),
        // body: ListView.separated( separatorBuilder: (ctx , index ) {
        //   return Divider(
        //     height: 8,
        //   );
        // }
        // ,itemCount: 10
        // ,itemBuilder: (context , index ){ return Container(
        //     height: 150,
        //     width: 200,
        //     decoration: BoxDecoration(
        //       color: Colors.deepPurple[200],
        //
        //     ),
        //   );},),
        // body: ListView.builder(
        //   itemCount: 10,
        //   itemBuilder: (context , index ){
        //     return Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 150,
        //         width: 200,
        //         decoration: BoxDecoration(
        //           color: Colors.deepPurple[200],
        //
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ),

    );
  }
}
