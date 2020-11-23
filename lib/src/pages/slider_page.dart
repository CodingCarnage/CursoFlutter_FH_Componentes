import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _blockearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (_blockearCheck)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://www.freepnglogos.com/uploads/chair-png/wooden-chair-png-transparent-image-pngpix-0.png'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _blockearCheck,
    //   onChanged: (value) {
    //     setState(() {
    //       _blockearCheck = value;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _blockearCheck,
      onChanged: (value) {
        setState(() {
          _blockearCheck = value;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _blockearCheck,
      onChanged: (value) {
        setState(() {
          _blockearCheck = value;
        });
      },
    );
  }
}
