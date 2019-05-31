import 'package:flutter/material.dart';
import 'package:flutter_app/src/providers/menu_provider.dart';
import 'package:flutter_app/src/utils/icon_finder_util.dart';
 
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Componentes'),
         centerTitle: true,
       ),
       body: _lista(),
    );
  }

  Widget _lista() {
    
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );

    
  }

  List<Widget> _listaItems( List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){

        },
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;
  }

  
}