import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nossos Clientes'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/coca_cola.png',
                  height: 80,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Coca-Cola',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'Maior empresa de refrigerantes do mundo',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/bmw.png',
                  height: 80,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'BMW',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'Maior montadora de veiculos de luxo do mundo',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/netflix.png',
                  height: 80,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'NetFlix',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'A maior empresa de streams do planeta',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
