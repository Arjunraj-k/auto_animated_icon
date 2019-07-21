library auto_animated_icon;

import 'package:flutter/material.dart';

enum InitialState { first, second }

///Creates an AnimatedIcon which is automaically animated.
///
///The [icon] and [onPressed] are required.
///[icon] cannot be null.
///[duration] is the time taken to animate the transition.
///[initialState] is the initial state of the [AnimatedIcon] which can be either [InitialState.first] or [InitialState.second] where the first indicate the first icon.
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
  final InitialState initialState;

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
      this.initialState = InitialState.first})
      : super(key: key);

  @override
  _AutoAnimatedIconState createState() => _AutoAnimatedIconState();
}

class _AutoAnimatedIconState extends State<AutoAnimatedIcon>
    with SingleTickerProviderStateMixin {
  AnimationController _menuAnimationController;

  bool isPressed;

  @override
  void initState() {
    super.initState();
    _menuAnimationController =
        AnimationController(vsync: this, duration: widget.duration);
    this.isPressed = widget.initialState == InitialState.first ? false : true;

    if (isPressed)
      _menuAnimationController.forward();
    else
      _menuAnimationController.reverse();
  }

  @override
  void dispose() {
    super.dispose();
    _menuAnimationController.dispose();
  }

  void _autoAnimateIcon() {
    isPressed = !isPressed;
    setState(() {
      if (isPressed)
        _menuAnimationController.forward();
      else
        _menuAnimationController.reverse();
    });

    if (widget.onPressed != null) widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _autoAnimateIcon,
      splashColor: widget.splashColor,
      hoverColor: widget.hoverColor,
      tooltip: isPressed ? widget.firstToolip : widget.secondToolip,
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
