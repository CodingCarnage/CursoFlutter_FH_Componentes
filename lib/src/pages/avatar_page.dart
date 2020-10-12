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
                  'https://scontent.flov2-1.fna.fbcdn.net/v/t31.0-8/13767377_10154363872736543_672179801977189739_o.jpg?_nc_cat=1&_nc_sid=09cbfe&_nc_eui2=AeHmPabEayDp_FWvTjqoL0jYnFhAe4Bf-9OcWEB7gF_708YT9FHUL1tSu2Tvlcb5uy0btGIYrEneJRGg_fEFVpmy&_nc_ohc=XwpOPZ0Pd_IAX98snvF&_nc_ht=scontent.flov2-1.fna&oh=0f5c91d4d26aa160ff7f9ff50ee855eb&oe=5FAA7075'),
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
