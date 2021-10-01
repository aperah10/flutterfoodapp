import 'package:demo1/Screen/Widgets/AllFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Register.dart';

class LoginScr extends StatelessWidget {
  static const routeName = '/login-screens';
  LoginScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ! SCREEN PAGE
                Container(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Image.asset(
                      'images/logo.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(LoginScr.routeName);
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 21,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red),
                        )),
                    InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(RegisterScr.routeName);
                        },
                        child: Text('SIGNUP',
                            style: TextStyle(
                              fontSize: 21,
                            )))
                  ],
                ),
                //  ! REGISTER PAGE

                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                            // ! LOGIN FORM FIELD                           */
/* -------------------------------------------------------------------------- */
class LoginForm extends StatefulWidget {
  dynamic bState;
  LoginForm({Key? key, this.bState}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _form = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  /* -------------------------------------------------------------------------- */
  /*                              // ! LOGIN BUTTON                             */
  /* -------------------------------------------------------------------------- */
  _onLoginButtonPressed() async {
    var isvalid = _form.currentState!.validate();
    if (!isvalid) {
      return "Enter the Correct Value";
    }
    _form.currentState!.save();
    if (isvalid == true) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return HomeScr();
      }));
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                             // ! END LOGIN FORM                            */
  /* -------------------------------------------------------------------------- */

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 15.0),
      child: Form(
        key: _form,
        child: Column(children: [
          EditFormFields(
            placeholder: 'Mobile',
            controller: phoneController,
            icon: Icons.mobile_friendly,
            inputType: TextInputType.emailAddress,
            formValidator: (String? val) {
              if (val == null || val.isEmpty) {
                return 'Enter the value';
              }
            },
          ),
          EditFormFields(
            placeholder: 'OTP',
            icon: Icons.mobile_screen_share,
            controller: otpController,
            inputType: TextInputType.number,
            formValidator: (String? val) {
              if (val == null || val.isEmpty) {
                return 'Enter the value';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleBtn(
              'Login',
              submitMethod: _onLoginButtonPressed,
            ),
          )
        ]),
      ),
    );
  }
}
