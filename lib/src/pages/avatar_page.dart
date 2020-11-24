import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

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
                  'https://www.jamsadr.com/images/neutrals/person-donald-900x1080.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child:
                CircleAvatar(child: Text('SL'), backgroundColor: Colors.brown),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://s.france24.com/media/display/cb8f406c-1f48-11e9-8238-005056bff430/w:1280/p:16x9/stan_lee.webp'),
          fadeInDuration: Duration(milliseconds: 10),
        ),
      ),
    );
  }
}
