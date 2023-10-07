import 'package:flutter/material.dart';

class Mysecondscreen extends StatefulWidget {

  var data;
  Mysecondscreen({super.key});

  @override
  State<Mysecondscreen> createState() => _MysecondscreenState();
}

class _MysecondscreenState extends State<Mysecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:Text("Welcome to my second screen {$widget.data}"),),
                    body:Center(child: Column(
                      children: [
                        Text("Hello"),
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Icon(Icons.backpack))
                      ],),),
    );
  }
}
