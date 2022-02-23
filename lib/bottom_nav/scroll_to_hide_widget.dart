import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class ScrollToHideWidget extends StatefulWidget {
  final Widget child;
  final ScrollController controller;
  final Duration duration;
  final double height;

  const ScrollToHideWidget({
  Key key,
  this.child,
  this.controller,
  this.duration = const Duration(microseconds: 200),
  this.height = kBottomNavigationBarHeight,
  }) : super(key: key);

  @override
  _ScrollToHideWidgetState createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(listen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(listen);
    super.dispose();
  }

  void listen() {

    final direction = widget.controller.position.userScrollDirection;
        if (direction == ScrollDirection.forward) {
          show();
        } else if (direction == ScrollDirection.reverse) {
          hide();
        }
  }

  void show () {
    if (!isVisible) setState(() => isVisible = true);
  }

  void hide () {
    if (isVisible) setState(() => isVisible = false);
  }


  @override
  Widget build(BuildContext context) => AnimatedContainer(
    duration: widget.duration,
    height: isVisible ? kBottomNavigationBarHeight : 0,
    child: Wrap(children: [widget.child],),
  );
}

