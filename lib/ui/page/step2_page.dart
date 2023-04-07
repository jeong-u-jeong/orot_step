import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var step in steps)
                    SvgPicture.asset(step <= 2 ? 'image/svg/step_bar_on.svg' : 'image/svg/step_bar_off.svg',
                    )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: '초산/경산 여부',
                          style: TextStyle(
                              fontSize: 24,
                              color: GlobalStyle.dark,
                              fontWeight: FontWeight.w700
                          ),
                          children: [
                            TextSpan(
                                text: '를',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal
                                )
                            )
                          ]
                      ),
                    ),
                    Text('선택해 주세요',
                      style: TextStyle(
                        fontSize: 24,
                        color: GlobalStyle.dark,
                      ),
                    ),
                    Container(height: 18,),
                    Text('입력한 정보는 ‘마이페이지 > 개인정보 수정’에서 수정이 가능합니다.',
                      style: TextStyle(
                        color: GlobalStyle.light_dark,
                        fontSize: 12
                      ),
                    )
                  ],
                ),
              ),
              Container(height: 48,),
              Column(
                children: [
                  wideBtn(txt: '초산이에요', color: GlobalStyle.purple_off, bottom: 8,),
                  wideBtn(txt: '경산이에요', color: GlobalStyle.purple_off, bottom: 0,),
                ],
              )
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: wideBtn(txt: '다음', color: GlobalStyle.gray_off, bottom: 48),
          )
        ],
      )
    );
  }
}
