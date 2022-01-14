import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serviços Prestados'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ListTile(
              title: Text(
                'Consultoria de negócios',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: Text(
                'realiza projetos de consultoria demandados pelas empresas que necessitam de melhoria nas áreas de Finanças, Marketing, Recursos Humanos, Qualidade, Logística e Comércio Exterior; ',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              title: Text(
                'Criação de empresas:',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: Text(
                'realiza a validação de ideias inovadoras para empresas nascentes e startups, sejam elas de base tecnológica ou não, contribuindo para o seu desenvolvimento, incubação e aceleração;',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              title: Text(
                'Pesquisas internas: ',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: Text(
                'realiza pesquisas demandadas pela Escola de Gestão e Direito, principalmente no que tange o perfil de seus alunos (atuais ou egressos), bem como em outras áreas da Gestão, como a Inovação e o Empreendedorismo. Cabe também o desenvolvimento de pesquisas junto a órgãos ou empresas que venham a criar parcerias. ',
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
