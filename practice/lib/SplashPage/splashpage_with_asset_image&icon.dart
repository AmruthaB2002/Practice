import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: Splashpage_2(),));
}

class Splashpage_2 extends StatelessWidget {
  const Splashpage_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Splash Page with Background Image",)),
          body: Container(
         decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage("assets/image/sky.jpg"),fit: BoxFit.cover)
         ),
       
      child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset("assets/icons/Butterfly.png",height: 100,width: 100,),
          const Text(
          "Touch The Sky...!",
          style:TextStyle(
              fontSize:30,
              fontWeight: FontWeight.bold,
              color: Colors.black)
              ),
        ],
      ),
          )
          ),
            );
  }
}