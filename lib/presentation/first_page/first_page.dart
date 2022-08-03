import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ログイン・登録"),
      ),
      body: Form(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("E-mail"),
              TextFormField(),
              SizedBox(
                height: 20.0,
              ),
              Text("Password"),
              TextFormField(),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: null,
                      child: Text("ログイン"),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    color: Colors.yellow,
                    child: TextButton(
                      onPressed: null,
                      child: Text("登録"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
