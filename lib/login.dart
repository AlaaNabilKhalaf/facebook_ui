import 'package:flutter/material.dart';
import 'home.dart';

class log extends StatelessWidget {
late String pass ;
late String email ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              onChanged: (String E){
               email = E ;
              },
              decoration: InputDecoration(
                label: Text('Email'),
                hintText: 'Enter the Email',
                prefixIcon: Icon(Icons.account_circle_outlined),
                suffixIcon: Icon(Icons.account_balance),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2
                    )
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              onChanged: (String P){
                pass = P;
              },
              decoration: InputDecoration(
                label: Text('Password'),
                hintText: 'Enter your Password',
                prefixIcon: Icon(Icons.account_circle_outlined),
                suffix: Icon(Icons.remove_red_eye,),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide(
                        color: Colors.black87,
                        width: 2
                    )
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              if(email != '' && pass != '')
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return home();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.center,
                child: Text('Login',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 35,
                  ),),
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),

        ],
      )
    );
  }
}
