
import 'package:flutter/material.dart';

class HomeScrn extends StatelessWidget {
  const HomeScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: Drawer(
          child: ListTile(
        trailing: CircleAvatar(
          backgroundImage: AssetImage("assets/images/login_Burger.jpeg"),
          radius: 40,
        ),
        leading: IconButton(onPressed: (
        ){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.logout)),
        title: Text(
          "LogOut",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      )),
      appBar: AppBar(
        title: Text("Burger.com"),
        
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 230, 156, 47),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
      ),
      body: ListView(children: [
      



  Container(
  height: 250,
  width: 250,
  color: Color.fromARGB(255, 248, 248, 248),
  child: Image.asset("assets/images/Potato Burger 6.2.jpeg",width: 250,height: 250,), // Replace with your image path
),



 Container(
  height: 250,
  width: 250,
  color: Color.fromARGB(255, 247, 246, 246),
  child: Image.asset("assets/images/Peanut Burger 5.jpeg",width: 250,height: 300,), // Replace with your image path
),


Container(
  height: 250,
  width: 250,
  color: Color.fromARGB(255, 245, 244, 244),
  child: Image.asset("assets/images/istockphoto-copy1.1.jpg",width: 250,height: 250,), // Replace with your image path
),



Container(
  height: 250,
  width: 250,
  color: Color.fromARGB(255, 255, 252, 252),
  child: Image.asset("assets/images/image burger 4.1.jpeg",width: 250,height: 250,), // Replace with your image path
),



      ],
        
      )
        ),
    );
    
  }
}


