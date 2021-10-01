import 'package:demo1/Screen/Widgets/AllFormField.dart';
import 'package:demo1/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Login.dart';

class RegisterScr extends StatelessWidget {
  static const routeName = '/signup-screens';
  RegisterScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
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
                              .pushReplacementNamed(RegisterScr.routeName);
                        },
                        child: Text(
                          'SIGNUP',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 21,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red),
                        )),
                    InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(LoginScr.routeName);
                        },
                        child: Text('LOGIN',
                            style: TextStyle(
                              fontSize: 21,
                            )))
                  ],
                ),
                //  ! REGISTER PAGE
                SignUpForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                     // ! 2. SIGNUP FORM WITHOUT BLOC LOGIC                    */
/* -------------------------------------------------------------------------- */
class SignUpForm extends StatefulWidget {
  dynamic bState;
  SignUpForm({Key? key, this.bState}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _form = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  /* -------------------------------------------------------------------------- */
  /*                      //  !SUBMIT MEHTOD FOR VALIDATION                     */
  /* -------------------------------------------------------------------------- */

  _registerNow() async {
    var isvalid = _form.currentState!.validate();
    if (!isvalid) {
      return;
    }
    _form.currentState!.save();
    if (isvalid == true) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return HomeScr();
      }));
    }
  }
//   /* -------------------------------------------------------------------------- */
  //                        todo END REGISTER METHOD                            */
//   /* -------------------------------------------------------------------------- */

  @override
  Widget build(BuildContext context) {
    /* -------------------------------------------------------------------------- */
    /*                       //  ! FORM VALIDATION PROVIDER                       */
    /* -------------------------------------------------------------------------- */

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
      child: Form(
        key: _form,
        child: Column(children: [
          EditFormFields(
              placeholder: 'Email',
              controller: emailController,
              icon: Icons.email,
              inputType: TextInputType.emailAddress,
              formValidator: (String? val) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                if (val == null || val.isEmpty) {
                  return 'Enter the Email';
                }
                RegExp regex = new RegExp(pattern);
                if (!regex.hasMatch(val)) {
                  return "enter valid email";
                }
              }),

          EditFormFields(
            placeholder: 'Phone',
            controller: phoneController,
            icon: Icons.mobile_friendly,
            inputType: TextInputType.number,
            formValidator: (String? val) {
              if (val == null || val.isEmpty) {
                return 'Enter the value';
              }
              if (val.length > 10) {
                return 'Enter the value';
              }
            },
          ),

          //  ! submit BUTTON
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleBtn('Singup', submitMethod: _registerNow),
          )
        ]),
      ),
    );
  }
}
