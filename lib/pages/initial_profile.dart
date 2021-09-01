import 'package:flutter/material.dart';

import 'dice_pages.dart';

class InitialPages extends StatefulWidget {
  InitialPages({Key? key}) : super(key: key);

  @override
  _InitialPagesState createState() => _InitialPagesState();
}

class _InitialPagesState extends State<InitialPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
            color: Colors.black,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(100),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/aline.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Text('Aline Alves',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 50),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink, elevation: .0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DicePages()),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 30),
                          child: Text('Sobre Min',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                        )),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(.0)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
