import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  const NoticiasScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppBar(
          title: const Text('Noticias'),
          centerTitle: true,
          backgroundColor: Colors.blue, // Color de la barra de navegación
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              _buildNoticiaCard(
                imageUrl:
                    'https://ceutec.hn/wp-content/uploads/2023/12/02-ceutec-vi-congreso-logistica-transporte-internacional.jpg',
                title:
                    'Ceutec realiza con éxito el VI congreso de logística destacando las tendencias en el transporte internacional',
                description:
                    'El Centro Universitario Tecnológico (CEUTEC), celebró con éxito del jueves 16 al sábado 18 de noviembre, el VI Congreso Logístico bajo el nombre Tendencias en el Transporte Internacional.',
              ),
              _buildNoticiaCard(
                imageUrl:
                    'https://ceutec.hn/wp-content/uploads/2023/11/QUETELOCUENTE4-1024x768.png',
                title:
                    'Ceutec conmemora la semana global de emprendimiento con el evento “¡Que te lo cuente el emprendedor!”',
                description:
                    'El Centro de Emprendimiento e Innovación (CEI) del Centro Universitario Tecnológico (CEUTEC) en San Pedro Sula celebró con gran éxito el evento ¡Que te lo cuente el emprendedor! en el marco de la Semana Global de Emprendimiento en Honduras (#SGEHN2023). La actividad se realizó el pasado miércoles 15 de noviembre en el Aula Magna de CEUTEC sede central y reunió a más de 105 asistentes del ecosistema emprendedor.',
              ),
              _buildNoticiaCard(
                  imageUrl:
                      'https://ceutec.hn/wp-content/uploads/2023/11/Sello-Fundahrse-768x1024.jpeg',
                  title:
                      'Unitec|Ceutec reciben el sello FUNDAHRSE por su compromiso con la responsabilidad social en Honduras.',
                  description:
                      'Por decimotercer año consecutivo, la Universidad Tecnológica Centroamericana (UNITEC) y el Centro Universitario Tecnológico (CEUTEC) han recibido el prestigioso Sello FUNDAHRSE de Empresa Socialmente Responsable. Este reconocimiento anual, otorgado por la Fundación Hondureña de Responsabilidad Social Empresarial (FUNDAHRSE), resalta el compromiso sostenido de UNITEC|CEUTEC hacia prácticas empresariales que impactan positivamente en Honduras, tanto a nivel interno como externo.'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNoticiaCard({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(10.0)),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 200.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
