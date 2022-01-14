import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {
                launch('tel:1159220011');
              },
              title: const Text(
                'Telefone',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                '(11) 5922-0011',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                launch(
                    "mailto:contato@duhconsultoria.com?subject=Hi&body=How are you%20plugin");
              },
              title: const Text(
                'Email',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                'contato@duhconsultoria.com',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                launch('http://duhconsultoria.com');
              },
              title: const Text(
                'Site',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                'duhconsultoria.com',
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
