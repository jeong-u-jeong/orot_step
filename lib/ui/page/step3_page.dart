import 'package:flutter/material.dart';
import 'package:join_page/global_asset/global_style.dart';
import 'package:flutter_svg/svg.dart';

class Step3Page extends StatefulWidget {
  const Step3Page({Key? key}) : super(key: key);

  @override
  State<Step3Page> createState() => _Step3PageState();
}

class _Step3PageState extends State<Step3Page> {
  bool single = false;
  bool multiple = false;
  bool count = false;
  bool alert = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalStyle.white,
        appBar: AppBar(
          backgroundColor: GlobalStyle.white,
          shadowColor: GlobalStyle.transparent,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left_rounded,
                color: GlobalStyle.dark,
                size: 38,
              )),
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
                      SvgPicture.asset(
                        step <= 3
                            ? 'image/svg/step_bar_on.svg'
                            : 'image/svg/step_bar_off.svg',
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
                            text: '단태아/다태아 여부',
                            style: TextStyle(
                                fontSize: 24,
                                color: GlobalStyle.dark,
                                fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                  text: '를',
                                  style:
                                  TextStyle(fontWeight: FontWeight.normal))
                            ]),
                      ),
                      Text(
                        '선택해 주세요',
                        style: TextStyle(
                          fontSize: 24,
                          color: GlobalStyle.dark,
                        ),
                      ),
                      Container(
                        height: 18,
                      ),
                      Text(
                        '입력한 정보는 ‘마이페이지 > 개인정보 수정’에서 수정이 가능합니다.',
                        style: TextStyle(
                            color: GlobalStyle.light_dark, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 48,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (single == false) {
                            single = true;
                            multiple = false;
                          }
                        });
                      },
                      child: wideBtn(
                        txt: '단태아',
                        color: (single == true) ? GlobalStyle.purple_on : GlobalStyle.purple_off,
                        bottom: 8,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (multiple == false) {
                            multiple = true;
                            single = false;
                          }
                        });
                      },
                      child: wideBtn(
                        txt: '다태아',
                        color: (multiple == true) ? GlobalStyle.purple_on : GlobalStyle.purple_off,
                        bottom: 8,
                      ),
                    ),
                    if (multiple == true)
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        color: GlobalStyle.light_gray,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            child: SvgPicture.asset('image/svg/ic_ma_minus.svg',
                            ),
                          ),
                          Text('0명',
                            style: TextStyle(
                              color: GlobalStyle.gray
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: SvgPicture.asset('image/svg/ic_ma_plus.svg',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Container(
                  child: AnimatedOpacity(
                    opacity: alert ? 0.8 : 0.0,
                    duration: Duration(milliseconds: 1200),
                    onEnd: () => setState(() {
                      if(alert == true){
                        alert = !alert;
                      }
                    }),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 16),
                      width: 236,
                      height: 34,
                      decoration: BoxDecoration(
                        color: GlobalStyle.light_dark,
                        borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('image/svg/ic_snack_caution.svg'),
                            Text('다태아의 명수를 입력해 주세요.',
                              style: TextStyle(
                                color: GlobalStyle.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (multiple == true) {
                        if (count == false) {
                          setState(() {
                            alert = true;
                          });
                        }
                      }
                    });
                  },
                  child:
                  wideBtn(txt: '다음', color: (single || count) ? GlobalStyle.purple_on : GlobalStyle.gray_off, bottom: 48),
                ),
              ],
            )
          ],
        ));
  }
}
