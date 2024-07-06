import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Top 5 lugares del Ecuador';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
            child: Column(
          children: [
            ImageSection(image: "images/mitad-del-mundo-quito.jpg"),
            TitleSection(name: "Mitad del mundo", location: "Quito"),
            ButtonSection(),
            TextSection(
                description:
                    "La Ciudad Mitad del Mundo es un complejo turístico y cultural propiedad de la prefectura de la provincia de Pichincha. Está situado en la parroquia de San Antonio del Distrito Metropolitano de Quito, al norte de la ciudad de Quito."),
            ImageSection(image: "images/panecillo.jpg"),
            TitleSection(name: "El Panecillo", location: "Quito"),
            ButtonSection(),
            TextSection(
                description:
                    "Es el más importante mirador natural de la ciudad de Quito, declarada Patrimonio Cultural de la Humanidad. Junto a la Virgen del Panecillo, podrás apreciar el Centro Histórico de la Carita de Dios ¡No puedes dejar de visitar este lugar!"),
            ImageSection(image: "images/galapagos.jpg"),
            TitleSection(
                name: "Parque Nacional Galápagos", location: "Galápágos"),
            ButtonSection(),
            TextSection(
                description:
                    "Las islas Galápagos1​ (también islas de las Galápagos y oficialmente conocidas como archipiélago de Colón1​ o archipiélago de Galápagos)2​ constituyen un archipiélago del océano Pacífico ubicado a 972 km de la costa de Ecuador."),
            ImageSection(image: "images/cajas.jpg"),
            TitleSection(name: "Parque Nacional Cajas ", location: "Cuenca"),
            ButtonSection(),
            TextSection(
                description:
                    "El parque nacional Cajas (PNC) es un área protegida, situada en los Andes sur del Ecuador, 33 km al noroccidente de la ciudad de Cuenca, dentro de la provincia de Azuay. El acceso más común al parque es la vía Colectora Cuenca-Puerto Inca (E582), también llamada vía Cuenca-Sayausí-Molleturo."),
            ImageSection(image: "images/iguanas.jpg"),
            TitleSection(name: "Parque de las Iguanas", location: "Guayaquil"),
            ButtonSection(),
            TextSection(
                description:
                    "El Parque Seminario también conocido como Parque Bolívar o Parque de las Iguanas es un pequeño y tradicional parque urbano público ubicado en el sector Rocafuerte en el centro de la ciudad de Guayaquil.")
          ],
        )),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
