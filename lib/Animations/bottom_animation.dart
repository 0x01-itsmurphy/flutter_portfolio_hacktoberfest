import 'dart:async';

import 'package:flutter/material.dart';

class BottomAnimator extends StatefulWidget {
  final Widget? child;
  final Duration time;

  BottomAnimator(this.child, this.time);

  @override
  _BottomAnimatorState createState() => _BottomAnimatorState();
}

class _BottomAnimatorState extends State<BottomAnimator>
    with SingleTickerProviderStateMixin {
  late Timer timer;
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(milliseconds: 290), vsync: this);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    timer = Timer(widget.time, animationController.forward);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: widget.child,
      builder: (BuildContext context, Widget? child) {
        return Opacity(
          opacity: animation.value,
          child: Transform.translate(
            offset: Offset(0.0, (1 - animation.value) * 20),
            child: child,
          ),
        );
      },
    );
  }
}

Timer? timer;
Duration duration = Duration();

wait() {
  if (timer == null || !timer!.isActive) {
    timer = Timer(Duration(microseconds: 120), () {
      duration = Duration();
    });
  }
  duration += Duration(milliseconds: 100);
  return duration;
}

class WidgetAnimator extends StatelessWidget {
  final Widget? child;

  WidgetAnimator({this.child});

  @override
  Widget build(BuildContext context) {
    return BottomAnimator(child, wait());
  }
}
