import 'package:flutter/material.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // MaterialApp 생성/반환
    return MaterialApp(
      title: 'Snackbar Demo',
      // 홈으로 Scaffild를 직접 구현
      home: Scaffold(
        appBar: AppBar(title: Text('SnackBar Demo')),
        // SnackBar 클래스 호출
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // 화면 중앙에 RaisedButton 추가
      child: RaisedButton(
        //RaisedButton에 텍스트 추거
        child: Text('Show snackBar'),
        // RaisedButton을 누르면 호출
        onPressed: () {
          //스낵바 생성
          final snackbar = SnackBar(
            //컨텐트 구성 텍스를 주입
            content: Text('Yay! A SnackBar!'),
            //액션 ㅜ입
            action: SnackBarAction(
              //스낵바에 Label 추가
              label: 'Undo',
              //스택바에 Label을 누를 때 호출
              onPressed: () {
                //Some code to the change
              },
            ),
          );
          // 생성한 스낵바를 노출. 화면 하단에 스낵바가 출력됨
          Scaffold.of(context).showSnackBar(snackbar);
        },
      ),
    );
  }
}
