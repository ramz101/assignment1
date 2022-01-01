 // ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "Assignment 1"
        //   ),
        // backgroundColor: Colors.amber,
        // ),
        body: 
        Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Column(
                children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          "My wallet",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(width: 150,),
                        Icon(
                        Icons.qr_code_2,
                        color: Colors.blue[800],
                        size: 34,
                      ),
                      SizedBox(width:5),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/avatar.JPG"),
                      )
                    ],
                  ),
                  SizedBox(height: 25,),
                  Column(
                    children: [
                      Center(
                        child: Text("Balance",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.normal
                        ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Center(
                        child: Text(
                          r"$22,180.00",
                          style: TextStyle(
                            fontSize: 33,
                          ),
                        )
                      )
                    ],
                  ),
                  SizedBox(height:16),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(onPressed: (){}, child: Text('Add',
                            style: TextStyle(
                              fontSize: 14
                            ),),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              
                              ),
                              padding: const EdgeInsets.all(18),
                              primary: Colors.blue[800]
                            ),),
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                            child: ElevatedButton(onPressed: (){}, child: Text('Withdraw',
                            style: TextStyle(
                              fontSize: 14,
                            ),),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: const EdgeInsets.all(18),
                              primary: Colors.blue[800]
                            )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),              
                ],
                ),
              ),
              Divider(
                color: Colors.blue,
                ),
              SizedBox(height: 8,),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                      child: Text('Bank accounts',
                      style: TextStyle(
                      color: Colors.grey
                        ),),),
                    )
                      ],
                    ),
              ),
                   ListItems(subtitle: '...3421', title: 'Checking', trailing: r'$3,800.00', image: 'assets/checking2.png',),
                   ListItems(subtitle: '...7903', title: 'Savings', trailing: r'Manual', image: 'assets/citi.jpg',),
                Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                    child: Text('Cards',
                    style: TextStyle(
                    color: Colors.grey
                      ),),),
                  )
                    ],
                  ),
                  ListItems(subtitle: '...8001', title: 'MasterCard', trailing: r'$4,100.00', image: 'assets/mastercard.jpg',),
                  ListItems(subtitle: '...5923', title: 'Visa Premium', trailing: r'$2,390.00', image: 'assets/visa2.jpg',),
            ],
          ),
        ),
     );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({ Key? key, required this.subtitle, required this.title, required this.trailing, required this.image,}) : super(key: key);

  final String title;
  final String subtitle;
  final String trailing;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset(image),
        title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        subtitle: Text(subtitle),
        trailing: Text(trailing,
        style: TextStyle(
          color: Colors.blue[800],
          fontWeight: FontWeight.bold
        ),),
      );
  }
}


