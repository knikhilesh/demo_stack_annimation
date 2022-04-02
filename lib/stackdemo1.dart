// stack example with non-positioned widgets

import 'package:flutter/material.dart';

class StackDemo1 extends StatelessWidget {
  const StackDemo1({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackDemoHome1(),
    );
  }
}

class StackDemoHome1 extends StatefulWidget {
  const StackDemoHome1({Key? key}) : super(key: key);

  @override
  _StackDemoHome1State createState() => _StackDemoHome1State();
}

class _StackDemoHome1State extends State<StackDemoHome1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Stack Demo 1"),
        ),
        body: Container(
          child: Center(
            child: Stack(

              // by default align the widgets inside the stack in top left corner

               alignment: Alignment.center,     // it will align the widgets inside the stack in center
              // alignment: Alignment.bottomLeft,
              // alignment: Alignment.bottomCenter,
              //alignment: Alignment.bottomRight,
              // alignment: Alignment.centerRight,
              // alignment: Alignment.centerLeft,
              // alignment: Alignment.topCenter,
              // alignment: Alignment.topLeft,
              // alignment: Alignment.topRight,

              //fit: StackFit.expand,
              //fit: StackFit.passthrough,
              //fit: StackFit.loose,

              
              children: [

                // bottom container by default it's height and width is maximum

                //non - positioned widget
                Container(
                height: 200,
                  width: 200,
                  color: Colors.blue,
                ),

                // middle container
                //non - positioned widget
                Container(
                height: 150,
                  width: 150,
                  color: Colors.red,
                ),

                //top container   // bottom container by default it's height and width is maximum
                //non - positioned widget
                Container(
                height: 100,
                  width: 100,
                  color: Colors.yellowAccent,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
