import 'package:flutter/material.dart';

class RotationAnimationWidget extends StatefulWidget {
  const RotationAnimationWidget({Key? key}) : super(key: key);

  @override
  State<RotationAnimationWidget> createState() =>
      _RotationAnimationWidgetState();
}

class _RotationAnimationWidgetState extends State<RotationAnimationWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  bool showWidget = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: RotationTransition(
        turns: _animation,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(size: 150.0),
        ),
      ),
    );
  }
}
