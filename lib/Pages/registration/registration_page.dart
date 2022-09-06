import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage(Key key) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final registrationKey = GlobalKey<FormState>();
  String? name;
  String? username;
  String? phone;
  String? password;
  String? confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              backgroundColor: Color.fromRGBO(252, 100, 33, 1),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
              radius: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: registrationKey,
                child: Column(
                  children: [
                    // name
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Ady familivasy',
                      ),
                      onChanged: (val) {
                        setState(() {
                          name = val;
                        });
                      },
                      validator: (value) {
                        if (value == '') {
                          return 'Adynyzy girizin';
                        } else {
                          return null;
                        }
                      },
                    ),

                    // username
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Ulanyjy ady',
                      ),
                      onChanged: (val) {
                        setState(() {
                          username = val;
                        });
                      },
                      validator: (value) {
                        if (value!.length <= 3) {
                          return 'Ulanyjy ady 3 harpdan kop bolmaly';
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Ady familivasy',
                      ),
                      onChanged: (val) {
                        name = val;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Ady familivasy',
                      ),
                      onChanged: (val) {
                        name = val;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Ady familivasy',
                      ),
                      onChanged: (val) {
                        name = val;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
