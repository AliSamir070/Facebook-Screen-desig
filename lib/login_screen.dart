import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(59, 89, 152, 1.0),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                        size: 100,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 5),
                            hintText: 'Email or Phone',
                            hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 20
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                )
                            )
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 5),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 20
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                )
                            )
                        ),
                        validator: (value){
                          if(!isPasswordValid(value??'')){
                            return "Enter valid password";
                          }else{
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                            if(formKey.currentState!.validate()){
                              Navigator.pushReplacementNamed(context, 'Home');
                            }
                          },
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[400]
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(),
                            padding: EdgeInsets.all(15),
                            primary: Color.fromRGBO(121, 143, 187, 0.6),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    'Sign Up for Facebook',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
bool isPasswordValid(String password) => password.length>=6;
