// Roll no = 2021-CS-171
// Name    = Muhammad Abubakar Siddique Farooqi

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back when the back button is pressed
          },
        ),
      ),
      body: Container(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 80,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text("90 Following | 100 Followers"),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 170,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Button press action
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink, // Background color of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Set the radius as needed
                      ),
                    ),
                    child: Text(
                      'Hire me',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 170,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: OutlinedButton(
                    onPressed: () {
                      // Button press action
                    },
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.pink, // Background color of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Set the radius as needed
                      ),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Azan Ali",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    Text(
                      "Pakistan",
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                  "Lorem  Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsuming software like Aldus PageMaker including versions of Lorem Ipsum"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  child: Icon(
                    Icons.umbrella,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.cloud),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.camera),
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
