import 'package:donation/phonenum.dart';

import 'package:flutter/material.dart';

class manageprofile extends StatefulWidget {
  @override
  State<manageprofile> createState() => _manageprofileState();
}

class _manageprofileState extends State<manageprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.red,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Group 155.png',
                height: 100,
                width: 100,
              ),
              // Text('ZINDAGI', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MANAGER PROFILE',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: username,
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: password,
            decoration: InputDecoration(
              labelText: 'Location',
            ),
            obscureText: true,
          ),
          SizedBox(height: 10),
          TextField(
            controller: password,
            decoration: InputDecoration(
              labelText: 'Number',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (username.text == "admin" && password.text == "123456") {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Phonenum(),
                  ),
                );
              } else {}
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              minimumSize: Size(150, 40),
            ),
            child: Text('Log Out'),
          )
        ],
      ),
    );
  }
}
