import 'package:flutter/material.dart';
import 'package:shemiranweb/widget/button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/logoname.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'لطفا جهت ثبت نام / ورود شماره همراه خود را در این قسمت وارد کنید',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  children: <Widget>[
                    TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        
                        hintText: 'شماره موبایل'
                      ),
                    ),
                    SizedBox(height: 40,),
                    MyButton(
                      text: 'ورود',
                      onPressed: () => Navigator.of(context).pushReplacementNamed('/verify'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
