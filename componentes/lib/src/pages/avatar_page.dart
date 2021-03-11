import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/vikingstv/images/8/86/Ragnar_Mid-Season_Promo.jpeg/revision/latest/top-crop/width/360/height/360?cb=20161219020239'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('RL'),
              backgroundColor: Colors.deepPurple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('data/assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 150),
          image: NetworkImage(
              'https://i.pinimg.com/originals/70/04/a9/7004a9837344875f0a3cd666cc33fe55.jpg'),
        ),
      ),
    );
  }
}
