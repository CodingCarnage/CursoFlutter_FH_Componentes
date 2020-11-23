import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _numberList =  new List<int>();
  int _ultimoItem = 0;


  @override
  void initState() { 
    super.initState();
    
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _agregar10();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _numberList[index];
        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/id/$image/500/300'),
        );
      },
    );
  }

  void _agregar10() {
    for (var i = 1; i < 11; i++) {
      _ultimoItem++;
      _numberList.add(_ultimoItem);
    }
    setState(() {
      
    });
  }
}
