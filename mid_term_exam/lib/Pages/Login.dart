// Roll no = 2021-CS-171
// Name    = Muhammad Abubakar Siddique Farooqi

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage(
        //         'assets/images/b.jpg'), // Replace with the actual image path
        //     fit: BoxFit
        //         .cover, // You can use other BoxFit values like BoxFit.fill or BoxFit.fitHeight
        //   ),
        // ),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color:
                          Colors.black12, // Set your desired background color
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                            40.0), // Adjust the radius as needed
                        bottomRight: Radius.circular(
                            40.0), // Adjust the radius as needed
                      ),
                    ),
                    child: Column(children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          prefixIcon: Icon(
                              Icons.person), // Replace with your desired icon
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.password),
                          border: InputBorder
                              .none, // Replace with your desired icon
                        ),
                      )
                    ]),
                  ),
                ),
                Positioned(
                    top: 20,
                    right: 80,
                    child: IconButton(
                      icon: Icon(Icons.arrow_circle_right),
                      iconSize: 50,
                      color: Colors.green,
                      onPressed: () {},
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Forgot?",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Register",
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
