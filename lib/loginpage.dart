import 'package:flutter/material.dart';
import 'package:learn_flutter/homepage.dart';

class LoginButton extends StatelessWidget {
  final Function() callback;
  const LoginButton(this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        //border: Border.all(color: const Color.fromARGB(255, 74, 19, 72)),
        borderRadius: BorderRadius.circular(13),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 165, 42, 160),
            Color.fromARGB(255, 91, 23, 88),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: TextButton(
        onPressed: () {
          this.callback();
        },
        style: ButtonStyle(
            shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        )),
        child: const Text(
          "Log In",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwdController = TextEditingController();

  void loginClicked() {
    String correctLogin = "Kris";
    String correctPassword = "1234";

    if (this.loginController.text == correctLogin &&
        this.passwdController.text == correctPassword) {
      loginController.clear();
      passwdController.clear();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      print("Nieprawidłowe dane.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 450,
          width: 350,
          child: Card(
            color: const Color.fromARGB(255, 218, 112, 214),
            shadowColor: const Color.fromARGB(255, 131, 34, 128),
            elevation: 10.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 131, 34, 128),
                    Color.fromARGB(255, 218, 112, 214)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Expanded(child: SizedBox()),
                  const Text(
                    "Welcome!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        letterSpacing: 6,
                        color: Colors.white),
                  ),
                  const Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: loginController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 120, 31, 116),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 149, 38, 145),
                              ),
                            ),
                            labelText: "Login",
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: passwdController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 120, 31, 116),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 149, 38, 145),
                              ),
                            ),
                            labelText: "Password",
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                            //width: 200,
                            height: 55,
                            child: LoginButton(this.loginClicked)),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
