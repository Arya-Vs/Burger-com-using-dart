import 'package:flutter/material.dart';
import 'package:loginpage_project/Register.dart';
import 'package:loginpage_project/homescreen.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  @override
  final formkey=GlobalKey<FormState>();
  final usernameController =TextEditingController();
  final passwordController = TextEditingController();
  
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
         ),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 192, 50),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 70),
              child: const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Burger.com',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      shadows: [
                        Shadow(
                            color: Color.fromARGB(255, 19, 12, 12),
                            blurRadius: 5,
                            offset: Offset(5, 5))
                      ],
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Form(key: formkey,
                  child: Column(children: [

                //////////////////////////////////  NAME ////////////////////////////////////

                          TextFormField(
                         controller: usernameController,
                                validator: (value) {
                                 if (value!.isEmpty) {
                                     return "Enter your Name";
                               } else if (value.length < 3) {
                                  return "Enter valid Name";
                                } else {   return null;  }
                                  },
                                 decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                     filled: true,
                                      hintText: 'Username',
                                      border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                     ),
                                prefixIcon: Icon(  Icons.person, // Replace with your desired icon
                                color: Colors.grey, // Adjust the icon color as needed
                               ),
                                 ),
                                  ),

                  ///////////////////////////////////////  PASS  /////////////////////////////////
                  
                    SizedBox(height: 30),
                    TextFormField(
                     controller: passwordController,
                      validator: (value) {
                       if (value!.isEmpty) {  return "Enter your password";
                        } else if (value.length < 8) {
                       return "Enter a valid password";
                      } else {
                       return null;
                      }
                      },
                 obscureText: true,
                 decoration: InputDecoration(
                   fillColor: Colors.grey.shade100,
                   filled: true,
                   hintText: 'Password',
                border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
                 ),
               prefixIcon: Icon(
                  Icons.lock, // Replace with your desired password icon
                  color: Colors.grey, // Adjust the icon color as needed
                        ),
                       ),
                       ),

                 
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        SizedBox(
              height: 40,
               child: ElevatedButton(
                   onPressed: () {
                        formkey.currentState?.validate();
                         },
                         style: ElevatedButton.styleFrom(
                         backgroundColor: Color.fromARGB(255, 10, 10, 10), // Replace with your desired color
                           minimumSize: Size(400, 0), // Adjust the minimum size as needed
                        ),
                          child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                              color: Color.fromARGB(255, 248, 246, 246),
                            ),
                          ),
                          ),
                           ),
                      ],
                    ),


                      SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        SizedBox(
              height: 40,
               child: ElevatedButton(
                   onPressed: () {
                       Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => MyRegister()),
    );
                         },
                         style: ElevatedButton.styleFrom(
                         backgroundColor: Color.fromARGB(255, 10, 10, 10), // Replace with your desired color
                           minimumSize: Size(400, 0), // Adjust the minimum size as needed
                        ),
                          child: Text(
                          'sign up',
                          style: TextStyle(
                            fontSize: 20,
                              color: Color.fromARGB(255, 248, 243, 243),
                            ),
                          ),
                          ),
                           ),
                      ],
                    )
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
