import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil do Usuário',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final String userName = 'Paulo Matheus';
  final int userAge = 30;
  final String userCity = 'Campo Grande';

  final String userName2 = 'Paulo Matheus';
  final int userAge2 = 30;
  final String userCity2 = 'Campo Grande';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Cor de fundo da barra
        title: Text(
          'Perfil do Usuário',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Título em negrito
            color: Colors.white, // Cor do texto
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity, // Cor de fundo da tela
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nome do usuário - texto grande e em negrito com cor azul
            Text(
              userName,
              style: TextStyle(
                fontSize: 32, // Tamanho grande
                fontWeight: FontWeight.bold, // Negrito
                color: Colors.blue, // Cor azul
              ),
            ),
            SizedBox(height: 20), // Espaçamento entre os textos

            // Idade do usuário - texto menor e em itálico com cor vermelha
            Text(
              'Idade: $userAge',
              style: TextStyle(
                fontSize: 18, // Tamanho menor
                fontStyle: FontStyle.italic, // Itálico
                color: Colors.red, // Cor vermelha
              ),
            ),
            SizedBox(height: 20), // Espaçamento entre os textos

            // Cidade do usuário - texto normal com cor roxa
            Text(
              'Cidade: $userCity',
              style: TextStyle(
                fontSize: 20, // Tamanho normal
                color: Colors.purple, // Cor roxa
              ),
            ),
          ],
        ),
      ),
    );
  }
}
