import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Splashpage(),));
}

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splash Page with Background Color")),
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange,
                   Colors.yellow,
                   Colors.red]
                   )
                  ),

    child: Center(child: Text("My Splash Page"),)

                 ),
    );
  }
}