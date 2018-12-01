import 'package:corrida_de_saco_prototipe/Global.dart';
import 'package:corrida_de_saco_prototipe/screens/inicial.dart';
import 'package:flutter/material.dart';
import 'package:material_search/material_search.dart';


class AmigosTela extends StatefulWidget {
  @override
  _AmigosTelaState createState() => _AmigosTelaState();
}

const _todosnomes_id_nome = const [
  [1,  'Leonardo Amor In Rodrigo'],
  [2,  'Rodrigo Perfeito'],
  [3,  'Andriél FerreirO'],
  [4,  'Renan Fórmula 1'],
  [5,  'Eduardo Posto de Gasolina'],
  [6,  'Deusonei'],
  [7,  'Carlos Alberto de Nóbrega'],
  [8,  'SAMAAAAAANTHAAA'],
  [9,  'Papai Noel'],
  [10, 'Fabricia tb Teadoro'],
];
var _resultados_filtrados = _todosnomes_id_nome;

List<List<dynamic>> _getNomes({String entrada}){
  entrada = entrada.toLowerCase().trim();

  List<List<dynamic>> r = [];
  for(List<dynamic> id_nome in _todosnomes_id_nome){
    String nome = id_nome[1];
    if(entrada==null || nome.toLowerCase().trim().contains(entrada)){
      r.add( id_nome );
    }
  }
  return r;
}

class Amigo extends StatelessWidget{
  String _nome;
  int _id;
  _AmigosTelaState _tela;

  Amigo(int id,String nome, _AmigosTelaState tela){
    _nome = nome;
    _id = id;
    _tela = tela;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: FlatButton(
        child: Column(
          children: <Widget>[
            Image.asset("assets/homem_iconfinder_Man-14_379487.png", width: 80,),
            Text(_nome)
          ],
        ),
        onPressed: (){
          _tela.abrirPerfilDoUsuario(_id);
        },
      )
    );
  }
}

class _AmigosTelaState extends State<AmigosTela>{
  bool _estaPesquisando = false;
  Icon _icone_procurar_fechar = Icon(Icons.search);
  IconButton _procurar_fechar;
  Widget _app_bar_title;
  final TextEditingController _filter = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _procurar_fechar = IconButton(
      icon: _icone_procurar_fechar,
      onPressed: (){
        setState(() {
          _estaPesquisando = _icone_procurar_fechar.icon == Icons.search;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if(_estaPesquisando){
      _icone_procurar_fechar = Icon(Icons.close);
      _app_bar_title = new TextField(
        controller: _filter,
        decoration: new InputDecoration(
          hintText: 'Encontrar jogador...',
          fillColor: Colors.white
        ),
      );
      _filter.addListener((){
        setState(() {
          _resultados_filtrados = _getNomes(entrada: _filter.text);
        });
      });
    }else{
      _icone_procurar_fechar = Icon(Icons.search);
      _app_bar_title = Text("Seus amigos");
    }


    return Scaffold(
      appBar: AppBar(
        backgroundColor: PreferenciasDoUsuario.COR_TEMA,
        actions: <Widget>[
          _procurar_fechar
        ],
        title: _app_bar_title,
      ),
      body: _estaPesquisando ? TelaDePesquisa(context, this) : TelaDeListaDeAmigos(context, this),
      backgroundColor: PreferenciasDoUsuario.COR_TEMA,
    );
  }

  void abrirPerfilDoUsuario(int id) {
    setState(() {
      _estaPesquisando = false;
    });

    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => InicialPage())
    );
  }
}



class TelaDeListaDeAmigos extends StatelessWidget{
  BuildContext _context;
  _AmigosTelaState _tela;

  TelaDeListaDeAmigos(BuildContext context, _AmigosTelaState tela){
    _context = context;
    _tela = tela;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Amigo(
                    222,"João",_tela
                ),Amigo(
                    222,"João",_tela
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Amigo(
                    222,"João",_tela
                ),Amigo(
                    222,"João",_tela
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Amigo(
                    222,"João",_tela
                ),Amigo(
                    222,"João",_tela
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TelaDePesquisa extends StatelessWidget{
  BuildContext _context;
  _AmigosTelaState _tela;

  TelaDePesquisa(BuildContext context, _AmigosTelaState tela){
    _context = context;
    _tela = tela;
  }

  @override
  Widget build(BuildContext context) {
    List<FlatButton> botoes = [];
    for(List<dynamic> id_nome in _resultados_filtrados){
      botoes.add(
        FlatButton(
            onPressed: (){
              _tela.abrirPerfilDoUsuario(id_nome[0]);
            },
            child: Text(id_nome[1])
        )
      );
    }
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
            children: botoes.length == 0 ? [ Text("Nenhum resultado") ] : botoes
        ),
      )
    );
  }
}