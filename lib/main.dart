import 'package:flutter/material.dart';
import 'package:taskeight/secondcontext.dart';

void main() {
  runApp(const LoginPage());
}


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
   _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              const SizedBox(height: 80.0),
              Column(
                children: <Widget>[
                  Image.asset('images/diamond.png',
                    height: 50,
                    width: 50,),
                  const SizedBox(height: 16.0),
                  const Text('Welcome '),
                ],
              ),
              const SizedBox(height: 120.0),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Username',
                ),
              ),
// spacer
              const SizedBox(height: 20.0),
// [Password]
              const TextField(
                decoration:  InputDecoration(
                  filled: true,
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              // TODO: Remove filled: true values (103)
              // TODO: Add TextField widgets (101)
              // TODO: Add button bar (101)
              ElevatedButton(
                  onPressed: (){
              Navigator.push(  context  , MaterialPageRoute(builder: (context) => Mysecondscreen()  )  );

              },
                  child: const Text('NEXT'),
              )


            ],
          ),
        ),
      ),
    );
  }
}
