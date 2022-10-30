// ignore_for_file: unused_field, unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormScree extends StatefulWidget {
  const FormScree({super.key});

  @override
  State<FormScree> createState() => _FormScreeState();
}

class _FormScreeState extends State<FormScree> {
  String? name;
  String? email;
  String? password;
  String? url;
  String? phoneNumber;
  String? calorise;

  Widget _buildNameField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Name'),
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      // validator: (value) => value.isEmpty ? 'Password cannot be blank':null,
      onSaved: (value) {
        name = value;
      },
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      onSaved: (value) {
        email = value;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      onSaved: (value) {
        password = value;
      },
    );
  }

  Widget _buildUrlField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Url'),
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      onSaved: (value) {
        url = value;
      },
    );
  }

  Widget _buildPhoneField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone'),
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      onSaved: (value) {
        phoneNumber = value;
      },
    );
  }

  Widget _buildCalorisField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Caloris'),
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      onSaved: (value) {
        calorise = value;
      },
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form Demo'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(24),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildNameField(),
                    _buildEmailField(),
                    _buildPasswordField(),
                    _buildUrlField(),
                    _buildPhoneField(),
                    _buildCalorisField(),
                    SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            return;
                          }
                          _formKey.currentState!.save();
                          print(name);
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Color.fromARGB(255, 20, 21, 21),
                              fontSize: 18),
                        ))
                  ],
                )),
          ),
        ));
  }
}
