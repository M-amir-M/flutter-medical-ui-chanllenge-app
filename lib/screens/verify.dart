import 'package:flutter/material.dart';
import 'package:shemiranweb/widget/button.dart';
import 'package:shemiranweb/widget/countdown.dart';
import 'package:shemiranweb/widget/verify_input.dart';

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'ارسال کد تایید',
                        style: TextStyle(fontSize: 20, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'کد ارسال شده به 09033509651 را در این قسمت وارد کنید',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  children: <Widget>[
                    VerificationCodeInput(
                      keyboardType: TextInputType.number,
                      length: 4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(' تا ارسال مجدد '),
                        SizedBox(width: 10,),
                        Countdown(
                          seconds: 120,
                          textStyle: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    MyButton(
                      text: 'تایید',
                      onPressed: () =>
                          Navigator.of(context).pushReplacementNamed('/'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Text(
                        ' شماره خود را اشتباه وارد کرده ام',
                        style: TextStyle(color: Colors.blue),
                      ),
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
