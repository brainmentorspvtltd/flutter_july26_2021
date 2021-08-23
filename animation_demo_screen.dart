import 'dart:math' as math;

import 'package:api_calls/utils/theme_builder.dart';
import 'package:flutter/material.dart';

class AnimationDemoScreen extends StatefulWidget {
  const AnimationDemoScreen({Key? key}) : super(key: key);

  @override
  _AnimationDemoScreenState createState() => _AnimationDemoScreenState();
}

class _AnimationDemoScreenState extends State<AnimationDemoScreen>
    with SingleTickerProviderStateMixin {
  bool selected = false;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: _buildAnimatedText(),
        ),
      ),
    );
  }

  _buildAnimatedText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedDefaultTextStyle(
          curve: Curves.easeInOut,
          child: Text('Flutter'),
          style: selected
              ? TextStyle(
                  color: Colors.blue,
                  fontSize: 50,
                )
              : TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                ),
          duration: Duration(milliseconds: 200),
        ),
        Spacer(),
        OutlinedButton(
            onPressed: () {
              ThemeBuilder.of(context)?.changeTheme();

              setState(() {
                selected = !selected;
              });
            },
            child: Text("Animate"))
      ],
    );
  }

  _buildAnimatedContainer() {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
        width: selected ? 200.0 : 100.0,
        height: selected ? 100.0 : 200.0,
        color: selected ? Colors.red : Colors.blue,
        alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
        duration: const Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
        child: const FlutterLogo(size: 75),
      ),
    );
  }

  _buildAnimatedBuilder() {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.green,
        child: const Center(
          child: Text('Whee!'),
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: child,
        );
      },
    );
  }

  ///Unlike the other constructors in the list, the default constructor allows us
  /// to do multiple operations at once. It is the most powerful constructor
  /// from the list.
  /// Instead of taking a specific parameter like an angle or scaling,
  /// this constructor takes a 4D Matrix directly in the transform parameter.
  /// This allows us to carry out multiple operations.
  _buildTransformWidget() {
    return Transform(
      transform: Matrix4.skewY(0.3)..rotateZ(3.14 / 12.0),
      origin: Offset(50.0, 50.0),
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.blue,
      ),
    );
  }

  _buildTransformRotateWidget() {
    return Transform.rotate(
      angle: 0.1,
      //origin: Offset(50.0, 50.0),
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.blue,
      ),
    );
  }

  ///Transform.translate translates the child of the transform widget
  ///by a specified amount in the X and Y direction.
  ///We supply an Offset which has the amount by which we want
  ///to move the child by in the X and Y directions.
  _buildTransformTranslateWidget() {
    return Transform.translate(
      offset: Offset(100.0, 0.0),
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.yellow,
      ),
    );
  }

  ///The scale constructor scales the child by the given scale parameter.

  _buildTransformScaleWidget() {
    return Transform.scale(
      scale: 0.5,
      child: Container(
        height: 200.0,
        width: 200.0,
        color: Colors.yellow,
      ),
    );
  }
}
