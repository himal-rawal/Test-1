import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isHidden = true;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 18, right: 18),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.clear,
                    size: 35,
                  ),
                  SizedBox(width: 90),
                  Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Join a wonderful community!",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 35),
              Row(
                children: <Widget>[
                  Flexible(child: buildTextField("First Name")),
                  SizedBox(
                    width: 8.0,
                  ),
                  Flexible(child: buildTextField("Last Name"))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              buildTextField(" Email"),
              SizedBox(
                height: 25,
              ),
              buildTextField("phone"),
              SizedBox(
                height: 25,
              ),
              buildTextField("Password"),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.green[600],
                ),
                child: Center(
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //SizedBox(height: 50),
              Flexible(
                flex: 1,
                child: Container(
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already a Member?",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "SignIn",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 23),
                      )
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15.0),
        fillColor: Colors.grey[200],
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black45,
          fontSize: 20.0,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none),
        suffixIcon: hintText == "Password"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }
}
