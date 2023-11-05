import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container( decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1554177255-61502b352de3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),fit: BoxFit.cover )
                  ),
                child: const Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome User...!",style: TextStyle( color: Colors.white,))
        ]
                )
                )

                )
       // Image.asset("assets/image/Background.jpg",fit: BoxFit.cover)
        );

          
    
  }
}