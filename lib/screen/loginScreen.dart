import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';

import '../constant/constant.dart';
import '../function/getPercentage.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/loginScreeen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormBuilderState> _formKeyLogin =
      GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hishab Mama",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 48,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              // Text(
              //   "Get a free account today !",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       fontSize: 22,
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold),
              // ),
              // Text(
              //   "Monthly payment will be required only when you will be added any mess",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     fontSize: 14,
              //     color: Color(0xff414141),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: getPercentSize(40, true, context),
                  width:
                      getPercentSize(widthOfButtonAndFromPer, false, context),
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FormBuilder(
                    key: _formKeyLogin,
                    initialValue: {
                      // 'date': DateTime.now(),
                      // 'accept_terms': false,
                    },
                    autovalidate: false,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FormBuilderTextField(
                            autocorrect: false,
                            attribute: "email",
                            maxLines: 1,
                            decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: textFieldBorderColor,
                                    width: borderSize),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue, width: borderSize),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: mainColor, width: borderSize),
                              ),
                            ),
                            validators: [
                              FormBuilderValidators.email(),
                            ],
                          ),
                          FormBuilderTextField(
                            maxLines: 1,
                            autocorrect: false,
                            obscureText: true,
                            attribute: "password",
                            decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: textFieldBorderColor,
                                    width: borderSize),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue, width: borderSize),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: mainColor, width: borderSize),
                              ),
                            ),
                            validators: [
                              FormBuilderValidators.minLength(8),
                              FormBuilderValidators.max(30),
                            ],
                          ),
                          ProgressButton(
                            defaultWidget: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            progressWidget: const CircularProgressIndicator(),
                            width: getPercentSize(
                                widthOfButtonAndFromPer, false, context),
                            height: 55,
                            borderRadius: borderRadiousForRegAndLogin,
                            color: mainColor,
                            onPressed: () async {
                              int score = await Future.delayed(
                                  const Duration(milliseconds: 3000), () => 42);

                              return () {};
                            },
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                text: "Forgot password ? ",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: mainColor,
                                ),
                                children: [
                                  // TextSpan(
                                  //   text: "Login",
                                  //   style: TextStyle(
                                  //     fontSize: 14.0,
                                  //     color: mainColor,
                                  //     fontWeight: FontWeight.w500,
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                text: "Don't have a account ? ",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Register",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: mainColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
