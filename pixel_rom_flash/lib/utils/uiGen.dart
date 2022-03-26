import 'package:flutter/material.dart';

class ItemCheckListBoxUi extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final bool status;

  const ItemCheckListBoxUi(
      {Key? key,
      required this.padding,
      required this.status,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          borderRadius: BorderRadius.circular(15)),
      padding: padding,
      child: child,
    );
  }
}
