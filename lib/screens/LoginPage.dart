import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catlog_app/utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAnimate = false;
  var _formKey = GlobalKey<FormState>();

  _moveToHome() async{
    if(_formKey.currentState.validate()) {
      setState(() {
        isAnimate = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.home);
      setState(() {
        isAnimate = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/login_image.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter username', labelText: 'username'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter username';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter password';
                        }else if (value.length<6) {
                          return 'Password length should be grater then 6';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter password', labelText: 'password'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(isAnimate ? 50 : 10),
                child: InkWell(
                  onTap: ()  {
                    _moveToHome();
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: isAnimate ? 50 : 150,
                    height: 40,
                    child: isAnimate
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                    alignment: Alignment.center,
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
