import 'package:flutter/material.dart';

class MyRegister extends StatelessWidget {
  const MyRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child:Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 42, 43, 44),
        child:ListTile(
          trailing: CircleAvatar(
            backgroundImage: AssetImage('images/Register_Burger2.jpeg'),
            radius: 40,
          ),
          leading: Icon(Icons.logout_rounded),
          title: Text(
            "LogOut",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          ),
        )),

          appBar: AppBar(
          title: Text("Register Now"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          actions: [IconButton(onPressed: (){}, icon:Icon(Icons.trolley))],
          ),
      body: Stack(
        
        children: [
        Container(
  padding: const EdgeInsets.only(left: 35, top: 70),
  child: Column(
    children: [
      CircleAvatar(
        radius: 50, // Adjust the size of the circle avatar as needed
        backgroundColor: Colors.grey, // Set the background color
        child: Icon(
          Icons.person, // Add an icon or image inside the circle avatar
          size: 60, // Adjust the icon size as needed
          color: Colors.white, // Set the color of the icon
        ),
      ),
      const Align(
        alignment: Alignment.topCenter,
        child: Text(
          "Burger.com",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            shadows: [
              Shadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(5, 5),
              )
            ],
            color: Color.fromARGB(255, 5, 5, 5),
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
      ),
    ],
  ),
),

          
          SingleChildScrollView(
          child :Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.2,right: 35,left: 35),
            child: Column(children: [
              SizedBox(
                height: 50
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                   
                ),
              ),
               
              SizedBox(
                height: 50
              ),
              TextField(
               
                 decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
              
                  
                ),
                 
              ), 
               SizedBox(
                height: 50
              ),
                TextField(
                
                 decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'city',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ), 
                ),
                 
              ), 
              
               SizedBox(
                    height: 0,
                  ),
                  
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      
                     


                    ],
                  ),
                   
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
               
                 decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Ordered iteam',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ), 
                ),
                 
              ), 
               SizedBox(
                    height: 50,
                  ),
              ElevatedButton(onPressed: (){
                print('Eluevated Button Clicked');
              }, child: Text('Submit')
              )
                  
                 
                   
                  
            ]),
          ),
          ),
        ],
      ),
          
         )
      );
    
  
    
  }
}



  
