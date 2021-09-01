import 'package:flutter/material.dart';
import 'package:portfolio/models/button.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class DicePages extends StatefulWidget {
  DicePages({Key? key}) : super(key: key);

  @override
  _DicePagesState createState() => _DicePagesState();
}

class _DicePagesState extends State<DicePages> {
  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            color: Colors.black,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    SizedBox(height: 50),
                    Text('''Aline Alves           
Graduanda em Engenharia de Pesca-UFS
Dev FrontEnd e Mobile - SoulCode
  Monitora voluntária 
                    ''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/aline3.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Container(
                        child: Text(
                          '''Uma nordestina que curte chás e livros, 
  nos momentos livre gosto de acampar e 
  fazer trilha, adoro viagens, amigos e filmes. ''',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text('Contatos:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'Email: alves.aline2@yahoo.com.br',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        child: Text(
                          'Telefone: (79)99906-0900',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              child: IconButton(
                            icon: Icon(
                              Ionicons.logo_instagram,
                              size: 35,
                              color: Colors.white,
                            ),
                            onPressed: () async {
                              const url = 'https://www.instagram.com/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'O endereço não pode ser exibido';
                              }
                            },
                          )),
                          Container(
                              child: IconButton(
                            icon: Icon(
                              Ionicons.logo_linkedin,
                              size: 35,
                              color: Colors.white,
                            ),
                            onPressed: () async {
                              const url = 'https://www.linkedin.com/feed/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'O endereço não pode ser exibido';
                              }
                            },
                          )),
                          Container(
                              child: IconButton(
                            icon: Icon(
                              Ionicons.logo_facebook,
                              size: 35,
                              color: Colors.white,
                            ),
                            onPressed: () async {
                              const url = 'https://www.linkedin.com/feed/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'O endereço não pode ser exibido';
                              }
                            },
                          )),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: buttonPages(context),
    );
  }
}
