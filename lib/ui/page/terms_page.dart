import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:join_page/global_asset/global_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  List checkListTerms = [ ///// 리스트뷰로 출력????????????
    {
      'id': 0,
      'value': false,
      'type': 'essential',
      'title': '[필수] 서비스 이용약관 동의',
    },
    {
      'id': 1,
      'value': false,
      'type': 'essential',
      'title': '[필수] 개인정보 수집 및 이용약관 동의'
    },
    {
      'id': 2,
      'value': false,
      'type': 'essential',
      'title': '[필수] 보안 및 데이터 활용 동의'
    },
    {
      'id': 3,
      'value': false,
      'type': 'essential',
      'title': '[필수] 개인정보 수집 및 이용약관 동의'
    },
    {
      'id': 4,
      'value': false,
      'type': 'choice',
      'title': '[선택] 위치기반 서비스 이용약관 동의'
    },
    {
      'id': 5,
      'value': false,
      'type': 'choice',
      'title': '[선택] 마케팅 정보 수신 및 활용 동의'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalStyle.white,
      appBar: AppBar(
        backgroundColor: GlobalStyle.white,
        shadowColor: GlobalStyle.transparent,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 8),
              width: 40,
              height: 40,
              child: Icon(Icons.close,
                color: GlobalStyle.dark,
              ),
            ),
          )
          // 닫기 버튼
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('오롯에 오신걸 환영해요!',
                            style: TextStyle(
                              fontSize: 24,
                              color: GlobalStyle.dark,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '가입약관',
                              style: TextStyle(
                                fontSize: 24,
                                color: GlobalStyle.dark,
                                fontWeight: FontWeight.w700
                              ),
                              children: [
                                TextSpan(
                                  text: '을 확인해 주세요.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal
                                  )
                                )
                              ]
                            ),
                          ),
                        ],
                      ),
                      //환영 문구
                      Container(height: 32,),
                      Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: SvgPicture.asset('image/svg/ic_ma_check_01_nomal.svg'),
                                ),
                              ),
                              Container(width: 2,),
                              Text('전체 동의',
                                style: TextStyle(
                                  color: GlobalStyle.dark,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                          CheckBox(txt: '[필수] 서비스 이용약관 동의'),
                          CheckBox(txt: '[필수] 개인정보 수집 및 이용약관 동의'),
                          CheckBox(txt: '[필수] 보안 및 데이터 활용 동의'),
                          CheckBox(txt: '[선택] 위치기반 서비스 이용약관 동의'),
                          CheckBox(txt: '[선택] 마케팅 정보 수신 및 활용 동의'),
                        ],
                      )
                      //약관동의 체크박스
                    ],
                  ),
                )
              ],
            ),
            wideBtn(onTap: () {}, txt: '확인')
          ],
        ),
      ),
    );
  }
}


class CheckBox extends StatefulWidget {

  final String txt;

  CheckBox({
    required this.txt
});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool checked = false;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  checked = !checked ? true : false;
                });
              },
              child: Container(
                width: 40,
                height: 40,
                child: !checked ? SvgPicture.asset('image/svg/ic_ma_check_02_nomal.svg')
                    : SvgPicture.asset('image/svg/ic_ma_check_02_pressed.svg')
                ,
              ),
            ),
            Container(width: 2,),
            Text(widget.txt,
              style: TextStyle(
                color: GlobalStyle.light_dark,
                fontSize: 16,
              ),
            )
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(right: 4),
            width: 40,
            height: 40,
            child: SvgPicture.asset('image/svg/btn_ma_shortcut.svg'),
          ),
        ),
      ],
    );
  }
}

class wideBtn extends StatelessWidget {
  final GestureTapCallback onTap;
  final String txt;

  wideBtn({
    required this.onTap,
    required this.txt,
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 48),
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: GlobalStyle.gray_off,
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
      ),
    );
  }
}
