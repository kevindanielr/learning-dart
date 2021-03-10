import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
        ],
      ),
    );
  }

  // Metodos de creación de cartas

  _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Soy el titulo de esta tarjeta!"),
            subtitle: Text(
                'Aqui estamos con la descripción de la tarjeta que quiero que ustedes vean, para que tengan una idea de lo que quiero mostrarles.'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {},
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://121clicks.com/wp-content/uploads/2019/07/landscape_photography_course_ian_plant_01.jpg'),
          )
        ],
      ),
    );
  }
}
