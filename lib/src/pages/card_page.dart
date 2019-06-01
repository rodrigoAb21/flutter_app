import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
          _cardTipo1(),
          SizedBox(height: 30,),
          _cardTipo2(),
          SizedBox(height: 30,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Primer Tarjeta'),
            subtitle: Text('Soy una primer tarjeta, que debe mostrarse medio larga ya que es un ejemplo.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('CANCEL'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }
  
  Widget _cardTipo2() {
    return Container(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4.0,
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage('https://i.pinimg.com/originals/72/18/da/7218da15a449e134985f46abfcd9a43e.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Descripcion de la imagen'),
            )
          ],
        ),
      ),
    );
  }
}