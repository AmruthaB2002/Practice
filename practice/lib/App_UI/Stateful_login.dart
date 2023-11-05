import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practice/App_sample/Home.dart';
import 'package:practice/App_sample/Signup.dart';
//import 'package:project_june1/home.dart';
//import 'package:project_june1/signup%20page.dart';

class Stf_Login extends StatefulWidget {
  @override
  State<Stf_Login> createState() => _Login2State();
}

class _Login2State extends State<Stf_Login> {
  var formkey = GlobalKey<FormState>();
  bool passvisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login with Validation'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/icons/chat-icon.png",
              height: 100,
              width: 100,
            ),
            const Text(
              "Login Here",
              style: TextStyle(fontSize: 30, color: Colors.purple),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(50)
                         )
                        ),
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return "Fields are empty or invalid";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
              child: TextFormField(
                obscuringCharacter: '*',
                obscureText: passvisibility, // showpass = true initialy
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if(passvisibility == true){
                              passvisibility = false;
                            }else{
                              passvisibility = true;
                            }
                          });
                        },
                        icon: Icon(passvisibility == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility)),
                    hintText: "PassWord",
                    border: const OutlineInputBorder(
                       // borderRadius: BorderRadius.circular(50)
                        )),
                validator: (pass) {
                  if (pass!.isEmpty || pass.length < 6) {
                    return "Fields are empty or password length must be >=6";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "Invalid Username or Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        // timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: const Text("Login")),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: const Text("Not a user?? Register Here!!!"))
          ],
        ),
      ),
    );
  }
}