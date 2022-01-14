import 'package:flutter/material.dart';
import 'package:navegacao/business_page.dart';
import 'package:navegacao/clients_page.dart';
import 'package:navegacao/contact_page.dart';
import 'package:navegacao/services_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  openBusiness() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BusinessPage(),
      ),
    );
  }

  _openServices() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ServicesPage(),
      ),
    );
  }

  openClients() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ClientsPage(),
      ),
    );
  }

  openContact() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ContactPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Duh Consultoria'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/consultant.png',
                height: 230,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  containerMenu(
                      'A Empresa', Icons.person, Colors.red, openBusiness),
                  containerMenu('Serviços', Icons.content_paste_rounded,
                      Colors.blue, _openServices),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  containerMenu(
                      'Clientes', Icons.group, Colors.teal, openClients),
                  containerMenu('Contato', Icons.contact_mail_rounded,
                      Colors.green, openContact),
                ],
              )
            ],
          ),
        ));
  }
}

Widget containerMenu(
    String name, IconData icon, Color color, Function function) {
  return GestureDetector(
    onTap: () {
      Future.delayed(Duration.zero, () {
        function();
      });
    },
    child: Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80,
            color: Colors.white,
          ),
          Text(
            name,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    ),
  );
}
