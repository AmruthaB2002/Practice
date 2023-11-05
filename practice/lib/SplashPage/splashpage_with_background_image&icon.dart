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
          image: DecorationImage(image: NetworkImage("https://cdn1.iconfinder.com/data/icons/aami-flat-message-bubbles/64/message-55-512.pngs"),
          fit: BoxFit.cover
       )
                  ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.sailing_outlined,size: 80,color: Colors.white,),
           const Text(
          "Splash Page",
          style:TextStyle(
              fontSize:30,
              fontWeight: FontWeight.bold,
              color: Colors.white)
              ),
        ],
      ),
          )
            ),
    );
  }
}