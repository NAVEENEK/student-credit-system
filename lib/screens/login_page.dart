import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<bool> selected = [true, false];

  final _loginFormKey = GlobalKey<FormState>();
  final _registerFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final nameController = TextEditingController();
  final semController = TextEditingController();
  final depController = TextEditingController();
  final registerEmailController = TextEditingController();
  final registerPasswordController = TextEditingController();

  Widget loginWidget() {
    return Form(
      key: _loginFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 60,
            child: TextFormField(
              controller: emailController,
              decoration: customdecoration("email"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "enter email";
                }
              },
            ),
          ),

          TextFormField(
            controller: passwordController,
            decoration: customdecoration("password"),
              validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter password";
              }
            },
            ),
            
          
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                if (_loginFormKey.currentState!.validate()) {
                  print("loged in ");
                }
              },
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }

  Widget registerWidget() {
    return Form(
      key: _registerFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(
            controller: nameController,
            decoration: customdecoration("Name"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "enter name ";
              }
            },
          ),
          TextFormField(
            controller: semController,
            decoration: customdecoration("sem"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "enter sem";
              }
            },
          ),
          TextFormField(
            controller: depController,
            decoration: customdecoration("dep"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "enter dep";
              }
            },
          ),
          TextFormField(
            controller: registerEmailController,
            decoration: customdecoration("Email"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "enter email";
              }
            },
          ),
          TextFormField(
            controller: registerPasswordController,
            decoration: customdecoration("password"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "enter password";
              }
            },
          ),

          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                if (_registerFormKey.currentState!.validate()) {
                  print("registered");
                }
              },
              child: Text("Register"),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration customdecoration(String hintText){
    return InputDecoration(
      hintText: hintText,
      filled: true,
      fillColor: Colors.white,
      
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),

        borderSide: BorderSide(
          width: 1,
          color: Colors.grey
        )
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          width: 1.5,
          color: Colors.green
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 250),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ToggleButtons(
                        borderRadius: BorderRadius.circular(15),
                        isSelected: selected,
                        onPressed: (index) {
                          setState(() {
                            for (int i = 0; i < selected.length; i++) {
                              selected[i] = i == index;
                            }
                          });
                        },
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            child: Text("login"),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            child: Text("register"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  selected[0] ? loginWidget() : registerWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
