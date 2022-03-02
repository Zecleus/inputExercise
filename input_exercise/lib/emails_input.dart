import 'package:flutter/material.dart';

class EmailsInput extends StatefulWidget {
  const EmailsInput({Key? key}) : super(key: key);

  @override
  _EmailsInputState createState() => _EmailsInputState();
}

class _EmailsInputState extends State<EmailsInput> {
  String email = "";
  String confirmEmail = "";
  bool match = false;

  void checkEmails() {
    if (email.isNotEmpty && confirmEmail.isNotEmpty && email == confirmEmail) {
      setState(() {
        match = true;
      });
    } else {
      setState(() {
        match = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            onChanged: (String email) {
              setState(() {
                this.email = email;
              });
              checkEmails();
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Confirm Email'),
            keyboardType: TextInputType.emailAddress,
            onChanged: (String email) {
              setState(() {
                confirmEmail = email;
              });
              checkEmails();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              match
                  ? 'Email addresses match!'
                  : 'Email addresses do not match!',
              style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic),
            ),
          ),
          ElevatedButton(
            onPressed: match
                ? () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Proceeding..."),
                      action: SnackBarAction(
                        label: 'Okay',
                        onPressed: () {},
                      ),
                    ));
                  }
                : null,
            child: Text("Continue"),
          ),
        ],
      ),
    );
  }
}
