import 'package:flutter/material.dart';
import '/Pages/ForgotPasswordPage.dart';

class AccountsPage extends StatefulWidget {
  AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  final TextEditingController _textEditingController = TextEditingController();
  bool isCLick1 = false;
  bool isCLick2 = false;
  bool isCLick3 = false;
  final Text e1 = Text("panjipradana@gmail.com");
  final Text e2 = Text("azanali@gmail.com");
  final Text e3 = Text("usman@gmail.com");
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
                  Icons.person,
                  color: Colors.orange,
                  size: 20,
                ),
                backgroundColor: Colors.orange[50],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Accounts",
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
                  "Add another account-so you can switch between them easily",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Your existing account"),
              Expanded(
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text("Manage Account",
                          style: TextStyle(
                              color: Colors.orange[200],
                              fontWeight: FontWeight.bold)))),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              toggle();
              isCLick1 = true;
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/2.jpg', // Specify the asset path
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(children: [
                      Text("Panji Pradana",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      e1
                    ]),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.check),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              toggle();
              isCLick2 = true;
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/2.jpg', // Specify the asset path
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(children: [
                      Text("Azan ali",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      e2
                    ]),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.check),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              toggle();
              isCLick3 = true;
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Border color
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.circular(20.0)),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/3.jpg', // Specify the asset path
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(children: [
                      Text("Usman Ghani",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      e3
                    ]),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.check),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Add Another"), Icon(Icons.add)]),
              onPressed: () {
                if (isCLick1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ForgotPasswordPage(email: e1.data)),
                  );
                }
                if (isCLick2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ForgotPasswordPage(email: e2.data)),
                  );
                }
                if (isCLick3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ForgotPasswordPage(email: e3.data)),
                  );
                }
              },
            ),
          ),
        ],
      ),
    ));
  }

  void toggle() {
    isCLick1 = false;
    isCLick2 = false;
    isCLick3 = false;
  }
}
