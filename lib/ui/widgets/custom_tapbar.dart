import 'package:flutter/material.dart';

class CustomTabbar extends StatefulWidget {
  const CustomTabbar({
    super.key,
    required this.tabs,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(5.0)),
  });
  final List<CustomTab> tabs;
  final Color? backgroundColor;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  @override
  State<CustomTabbar> createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? Colors.grey.shade200,
          borderRadius: widget.borderRadius,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: widget.tabs,
        ),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.title,
    required this.onTap,
    required this.activeColor,
    this.inActiveColor = Colors.transparent,
    required this.activeTextColor,
    required this.active,
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
  });
  final String title;
  final VoidCallback onTap;
  final Color activeColor;
  final Color inActiveColor;
  final Color activeTextColor;
  final bool active;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35.0,
        decoration: BoxDecoration(
            color: active ? activeColor : inActiveColor,
            borderRadius: borderRadius,
            boxShadow: [
              if (active)
                const BoxShadow(
                  offset: Offset.zero,
                  blurRadius: 5.0,
                  spreadRadius: 0.0,
                  color: Colors.black38,
                ),
            ]),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: _textColor(active),
          ),
        ),
      ),
    ));
  }

  Color _textColor(bool active) {
    return active ? activeTextColor : Colors.black38;
  }
}
