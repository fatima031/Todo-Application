
import 'package:flutter/material.dart';
import 'package:todoapp/index.dart';
import 'package:todoapp/register.dart';
import 'package:todoapp/welcome.dart';


class login_view extends StatelessWidget {
  const login_view({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.blueGrey,
        child: Scaffold(
          // backgroundColor: Colors.black,
          body: Container(
            color: Colors.blueGrey,
            height: 700,
            width: 700,
            child: Column(
              children: [
                Container(
                    color: Colors.blueGrey,
                    alignment: Alignment.topLeft,
                    child: IconButton.filled(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => welcome_view()));
                      },
                      icon: Icon(Icons.arrow_back_ios_sharp),
                    )),
                Container(
                  // color: Colors.black,
                  // height: 700,
                  // width: 700,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        // alignment: Alignment.topLeft,
                        color: Colors.blueGrey,

                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "User Name",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    hintText: "User Name"),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: const Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                "User Password",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    hintText: "password"),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Container(
                      //   child: Column(
                      //     // mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.only(left: 20, top: 10),
                      //         child: Text(
                      //           "Confirm User Password",
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //           ),
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.only(left: 20, right: 20),
                      //         child: TextField(
                      //           obscureText: true,
                      //           decoration: InputDecoration(
                      //               border: OutlineInputBorder(
                      //                 borderRadius: BorderRadius.all(
                      //                   Radius.circular(20),
                      //                 ),
                      //               ),
                      //               hintText: "Confirm password"),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Index_View()));
                            },
                            child: Text("Login")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(""),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.only(left: 75, right: 75))),
                            onPressed: () {},
                            child: Text("Continue With Google")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.only(left: 75, right: 75))),
                            onPressed: () {},
                            child: Text("Continue With Appe")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => register_view()));
                            },
                            child: Text("Don't have an account? Register")),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}