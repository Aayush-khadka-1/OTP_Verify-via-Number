import 'package:flutter/material.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countrycode = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = '+977';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/images/img_1.png', height: 300, width: 300),
            SizedBox(height: 30),
            Text('Phone Verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                )),
            SizedBox(height: 10),
            Text(
              'Register your mobile number,to access all the fun activities of the App',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 36.0),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(14.0)),
              child: Row(children: [
                SizedBox(width: 10),
                SizedBox(
                    width: 80,
                    child: TextField(
                      controller: countrycode,
                      decoration: InputDecoration(border: InputBorder.none),
                    )),
                SizedBox(width: 10),
                Text(
                  '|',
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                ),
                SizedBox(width: 10),
                Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone Number')))
              ]),
            ),
            SizedBox(height: 22.0),
            SizedBox(
              height: 46.0,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'otp');
                },
                child: Text(
                  'Send the code',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
