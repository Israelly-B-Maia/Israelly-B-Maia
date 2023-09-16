import 'package:flutter/material.dart';
import 'package:karte/telacomunidade.dart';
import 'package:karte/telarecarregue.dart';
import 'package:karte/paginainicial.dart';
import 'package:karte/telaperfil.dart';
import 'package:karte/telaphone.dart';

class TelaInicio extends StatefulWidget {
  @override
  _TelaInicioState createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 0, 57, 126),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 200.0),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 88, 132, 196),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'RS 0,00',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaRecarregue()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 88, 132, 196),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 88, 132, 196),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'RECARREGUE',
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaComunidade()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 88, 132, 196),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 88, 132, 196),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'COMUNIDADE',
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Positioned(
                  bottom: isMenuOpen ? 180 : 20,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMenuOpen = !isMenuOpen;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Icon(
                          isMenuOpen
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                if (isMenuOpen)
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            // ir para a tela de home 
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => TelaInicio()));
                          },
                          icon: Icon(Icons.home),
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: () {
                            // ir para a tela de phone
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => TelaPhone()));
                          },
                          icon: Icon(Icons.phone),
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: () {
                            // ir para a tela de inicial de login e cadastro
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const InicialPage()));
                          },
                          icon: Icon(Icons.logout),
                          color: Colors.black,
                        ),
                        IconButton(
                          onPressed: () {
                            // ir para a tela de perfil
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => TelaPerfil()));
                          },
                          icon: Icon(Icons.person),
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
