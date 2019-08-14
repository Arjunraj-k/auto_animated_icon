import 'dart:developer';

import 'package:flutter/material.dart';

enum IconState { first, second }

///Creates an AnimatedIcon which is automaically animated.
///
///The [icon] and [onPressed] are required.
///[icon] cannot be null.
///[duration] is the time taken to animate the transition.
///[iconState] is the state of the [AnimatedIcon] which can be either [IconState.first] or [IconState.second] where the first indicate the first icon.
///
///
///For other customization info, Please refere to [IconButton] and [AnimatedIcon].
class AutoAnimatedIcon extends StatefulWidget {
  final AnimatedIconData icon;
  final Function onPressed;
  final Duration duration;
  final Color splashColor;
  final Color hoverColor;
  final String firstToolip;
  final String secondToolip;
  final double size;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry alignment;
  final Color color;
  final Color focusColor;
  final Color highlightColor;
  final Color disabledColor;
  final FocusNode focusNode;
  final String semanticLabel;
  final TextDirection textDirection;
  final IconState iconState;

  AutoAnimatedIcon(
      {Key key,
      @required this.icon,
      @required this.onPressed,
      this.duration = const Duration(milliseconds: 300),
      this.splashColor,
      this.hoverColor,
      this.size = 24,
      this.padding = const EdgeInsets.all(18),
      this.alignment = Alignment.center,
      this.color,
      this.focusColor,
      this.highlightColor,
      this.disabledColor,
      this.focusNode,
      this.semanticLabel,
      this.textDirection,
      this.firstToolip,
      this.secondToolip,
      this.iconState = IconState.first})
      : super(key: key);

  @override
  _AutoAnimatedIconState createState() => _AutoAnimatedIconState();
}

class _AutoAnimatedIconState extends State<AutoAnimatedIcon>
    with SingleTickerProviderStateMixin {
  AnimationController _menuAnimationController;

  @override
  void initState() {
    super.initState();
    _menuAnimationController =
        AnimationController(vsync: this, duration: widget.duration);

    if (widget.iconState == IconState.first)
      _menuAnimationController.reverse();
    else
      _menuAnimationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _menuAnimationController.dispose();
  }

  @override
  void didUpdateWidget(AutoAnimatedIcon oldWidget) {
    log(oldWidget.iconState.toString());

    if (oldWidget.iconState != widget.iconState) {
      if (oldWidget.iconState == IconState.first &&
          widget.iconState == IconState.second)
        _menuAnimationController.forward();
      else if (oldWidget.iconState == IconState.second &&
          widget.iconState == IconState.first)
        _menuAnimationController.reverse();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
      splashColor: widget.splashColor,
      hoverColor: widget.hoverColor,
      tooltip: (widget.iconState == IconState.first)
          ? widget.firstToolip
          : widget.secondToolip,
      iconSize: widget.size,
      padding: widget.padding,
      alignment: widget.alignment,
      color: widget.color,
      focusColor: widget.focusColor,
      highlightColor: widget.highlightColor,
      disabledColor: widget.disabledColor,
      focusNode: widget.focusNode,
      icon: AnimatedIcon(
        icon: widget.icon,
        progress: _menuAnimationController,
        semanticLabel: widget.semanticLabel,
        textDirection: widget.textDirection,
      ),
    );
  }
}
