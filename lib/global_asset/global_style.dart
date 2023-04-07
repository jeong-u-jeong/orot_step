import 'package:flutter/material.dart';

class GlobalStyle {
  static const Color transparent = Color(0xff00000000);
  static const Color white = Color(0xffffffff);
  static const Color purple_on = Color(0xff7a65e8);
  static const Color purple_off = Color(0xffc5bcf5);
  static const Color gray = Color(0xffadbdcc);
  static const Color light_gray = Color(0xfff5f7fa);
  static const Color gray_off = Color(0xffcfdae6);
  static const Color dark = Color(0xff1e2225);
  static const Color light_dark = Color(0xff475259);
}


class wideBtn extends StatelessWidget {
  final String txt;
  final Color color;
  final double bottom;

  wideBtn({
    required this.txt,
    required this.color,
    required this.bottom
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, bottom),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(
            color: GlobalStyle.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

final List<int> steps = [1, 2, 3, 4, 5, 6];