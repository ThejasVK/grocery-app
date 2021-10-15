import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocery/data/database_helper.dart';
import 'package:grocery/models/user.dart';
import 'package:grocery/pages/register/register_presenter.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    implements RegisterPageContract {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _username, _password;

  RegisterPagePresenter _presenter;

  _RegisterPageState() {
    _presenter = new RegisterPagePresenter(this);
  }

  void _submit() {
    final form = formKey.currentState;
    final myController = TextEditingController();

    if (form != Null) {
      if (form.validate()) {
        setState(() {
          _isLoading = true;
          form.save();
          _presenter.doRegister(_username, _password);
        });
      }
    } else {}
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var registerBtn = new CupertinoButton(
        child: new Text("Register"),
        onPressed: _submit,
        color: Color(0xff84CC83));
    var loginBtn = new CupertinoButton(
        child: new Text("Login"),
        color: Color(0xff84CC83),
        onPressed: () {
          Navigator.of(context).pushNamed("/login");
        });
    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: new Text(
        "Kindly provide your username and password this data can be used later to log in.",
        textScaleFactor: 1,
        ),

        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _username = val,
                  decoration: new InputDecoration(labelText: "Any Username"),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Any Password"),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        registerBtn,
        SizedBox(
          height: 20,
        ),
        //loginBtn,
      ],
    );

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff84CC83),
        title: new Text("Register Page"),
      ),
      key: scaffoldKey,
      body: new Container(
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }

  @override
  void onRegisterError(String error) {
    // TODO: implement onLoginError
    _showSnackBar(error);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onRegisterSuccess(User user) async {
    // TODO: implement onLoginSuccess
    _showSnackBar(user.toString());
    setState(() {
      _isLoading = false;
    });
    var db = new DatabaseHelper();
    await db.saveUser(user);
    Navigator.of(context).pushNamed("/login");
  }
}
