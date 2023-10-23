import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  String? email;
  final TextEditingController _textEditingController;

  ForgotPasswordPage({required this.email})
      : _textEditingController = TextEditingController(text: email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Icon(
                  Icons.lock_rounded,
                  color: Colors.orange,
                  size: 20,
                ),
                backgroundColor: Colors.orange[50],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 250,
              child: Opacity(
                opacity: 0.5,
                child: Text(
                  "Enter your email that you used to register your account, so we can send you a link to reset your password?",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(text: "email"),
                TextSpan(
                  text: '*',
                  style: TextStyle(color: Colors.red), // Change the color here
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              child: Text("Send Link"),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 2, // Adjust thickness as needed
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(text: "Forgot Your Email?"),
              TextSpan(
                text: ' Try Phone Number',
                style: TextStyle(color: Colors.blue), // Change the color here
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
