import 'package:animated_checkmark/animated_checkmark.dart';
import 'package:flutter/material.dart';

class CheckmarkButton extends StatelessWidget {
  final void Function(dynamic) onPressed;
  final double? width;
  final double height;
  final Widget child;
  final bool checked;
  final int index;

  const CheckmarkButton({
    required this.onPressed,
    this.width,
    this.height = 80,
    super.key,
    required this.child, required this.checked, required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: OutlinedButton(
        onPressed: () {
          onPressed(index);
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          side: BorderSide(width: 1, color: Colors.blue.shade200),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            child,
            Checkmark(
              checked: checked,
              indeterminate: false,
              size: 30,
              color: Colors.blue,
              drawCross: false,
              drawDash: true,
            ),
          ],
        ),
      ),
    );
  }
}
