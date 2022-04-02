// stack example with positioned widgets
import 'package:flutter/material.dart';


class StackDemoPositioned1 extends StatelessWidget {
  const StackDemoPositioned1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PositionedStackHome(),
    );
  }
}

class PositionedStackHome extends StatefulWidget {
  const PositionedStackHome({Key? key}) : super(key: key);

  @override
  _PositionedStackHomeState createState() => _PositionedStackHomeState();
}

class _PositionedStackHomeState extends State<PositionedStackHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Stack positioned demo"),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              overflow: Overflow.visible,
              children: <Widget>[
                // Max Size Widget
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Top Widget: Green',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 150,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Middle Widget',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          'Bottom Widget',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}