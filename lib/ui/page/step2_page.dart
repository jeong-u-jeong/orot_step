import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:join_page/global_asset/global_style.dart';

class Step2Page extends StatelessWidget {
  final List<int> steps = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalStyle.white,
      appBar: AppBar(
        backgroundColor: GlobalStyle.white,
        shadowColor: GlobalStyle.transparent,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.chevron_left_rounded,
          color: GlobalStyle.dark,
          size: 38,
          )
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              for (var step in steps)
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(right: 2),
                    height: 2,
                    color: step <= 2 ? GlobalStyle.purple_on : GlobalStyle.light_gray,
                  )
                )
            ],
          )
        ],
      )
    );
  }
}
