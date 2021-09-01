import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/initial_profile.dart';

void main() => runApp(App());

//Widget sem estado
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'portfolio',
        home: InitialPages(),
        //home: PerfilPages(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          textTheme: GoogleFonts.ibmPlexSansTextTheme(),
        ));
  }
}

// class UsuarioWidget extends StatelessWidget {
//   //é imutavel o StatelessWidget
//   final String nome;
//   UsuarioWidget({required this.nome});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Text('Olá, usuário? $nome'));
//   }
// }
