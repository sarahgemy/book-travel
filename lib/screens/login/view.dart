import 'package:flutter/material.dart';
import 'package:msh/screens/home/view.dart';

import '../../core/helper_methods.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isPasswordShown = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: Color.fromARGB(255, 27, 187, 255)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.9),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Image.asset("assets/images/air_plane.jpg"),
                  Text(
                    "Enter Your Data",
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email Address",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        )),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    obscureText: !isPasswordShown,
                    decoration: InputDecoration(
                        labelText: "Your Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              isPasswordShown = !isPasswordShown;
                              setState(() {});
                            },
                            icon: Icon(!isPasswordShown
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        )),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        navigateTo(context,
                            page: HomeView(), leaveHistory: false);
                      },
                      child: Text("Login"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
