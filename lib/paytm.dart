import 'package:flutter/material.dart';
import 'package:grocery/transaction.dart';

class PayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PayState();
  }
}

class PayState extends State<PayPage> {
  String _accno;
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _calories;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildAccNo() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Account number'),
      keyboardType: TextInputType.phone,
      maxLength: 18,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Account number is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _accno = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }


  Widget _buildIFSC() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'IFSC Code'),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'IFSC is Required';
        }

        return null;
      },

    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is Required';
        }

        return null;
      },

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment Form"),
      backgroundColor: Color(0xff84CC83),),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildAccNo(),
                _buildEmail(),
                _buildIFSC(),
                _buildPhoneNumber(),
                SizedBox(height: 100),
                RaisedButton(
                  color: Color(0xff84CC83),
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TranPage()));
                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}