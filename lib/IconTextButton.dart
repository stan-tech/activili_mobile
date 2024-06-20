import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class IconTextButton extends StatefulWidget {
  final String iconPath;
  final String text;
  final VoidCallback onPressed;
  ColorFilter iconColor;
  final double iconSize; 
  final double buttonPadding;
  double textFontSize;

    IconTextButton({
    required this.iconPath,
    required this.text,
    required this.onPressed,
     this.iconColor = const ColorFilter.mode(Colors.black, BlendMode.srcIn),
     required this.buttonPadding,
     this.iconSize = 20,
     this.textFontSize= 12

  });

  @override
  State<IconTextButton> createState() => _IconTextButtonState();
}

class _IconTextButtonState extends State<IconTextButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0))
          
          ),
      onPressed: widget.onPressed,
      child: Padding(
        padding: EdgeInsets.all(widget.buttonPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              widget.iconPath,
              colorFilter: widget.iconColor,
              height: widget.iconSize,
              width: widget.iconSize,
            ),
            const SizedBox(height: 25),

            Text(
              widget.text ,
              style:  TextStyle(fontSize: widget.textFontSize),
              ),
          ],
        ),
      ),
    );
  }
}