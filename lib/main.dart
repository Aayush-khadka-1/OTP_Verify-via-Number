import 'package:flutter/material.dart';
import 'package:phone_number_otp/otp.dart';
import 'package:phone_number_otp/phone.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OTP App',
        initialRoute: 'phone',
        routes: {
          'phone': (context) => MyPhone(),
          'otp': (context) => MyOtp()

        }
    );
  }
}

