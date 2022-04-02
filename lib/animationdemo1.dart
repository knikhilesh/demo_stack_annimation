import 'package:flutter/material.dart';

class AnimationDemo1 extends StatelessWidget {
  const AnimationDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationPage1(),
    );
  }
}

class AnimationPage1 extends StatefulWidget {
  const AnimationPage1({Key? key}) : super(key: key);

  @override
  _AnimationPage1State createState() => _AnimationPage1State();
}

class _AnimationPage1State extends State<AnimationPage1> with SingleTickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 3000));
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    animation.addListener((){
      setState((){
        print (animation.value.toString());
      });
    });
    animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        animationController.reverse();
      } else if(status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
    animationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Animation demo"),
          ),
          body:  Center(
              child: AnimatedLogo(
                animation: animation,
              )
          ),
        )
    );
  }
}

class AnimatedLogo extends AnimatedWidget {
  final Tween<double> _sizeAnimation = Tween<double> (begin: 0.0, end: 500.0);
  AnimatedLogo({Key? key, required Animation animation}):super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as dynamic;
    return Transform.scale(
      scale: _sizeAnimation.evaluate(animation),
      child: FlutterLogo(),
    );
  }
}