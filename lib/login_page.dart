import 'package:flutter/material.dart';
import 'package:major_project/Home_Screen.dart';
import 'package:major_project/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/groceryimage.png"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken))),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 140,
                    child: Center(
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 95,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 36),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[600]!.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 21),
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.white),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0),
                                  child: Icon(
                                    Icons.email,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                )),
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[600]!.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 21),
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.white),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0),
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                )),
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.white))),
                              child: Text(
                                "Create New Account",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
