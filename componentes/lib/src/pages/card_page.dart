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
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
          _cardTipo1(),
          SizedBox(height: 30),
          _cardTipo2(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  // Metodos de creación de cartas

  _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('data/assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 150),
            height: 300.0,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://121clicks.com/wp-content/uploads/2019/07/landscape_photography_course_ian_plant_01.jpg'),
          ),
          // Image(
          //   image: NetworkImage(
          //       'https://121clicks.com/wp-content/uploads/2019/07/landscape_photography_course_ian_plant_01.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner!'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            )
          ]),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
