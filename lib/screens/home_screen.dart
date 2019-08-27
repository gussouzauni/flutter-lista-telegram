import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String url =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Telegram_logo.svg/768px-Telegram_logo.svg.png';
  static List<String> dados = [
    '[Grupo] Android',
    '[Grupo] Java EE',
    '[Grupo] Ruby on Rails',
    '[Grupo] Dart',
    '[Grupo] Flutter'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        //Popular o Drawer
      ),
      appBar: PreferredSize(
          child: AppBar(
            backgroundColor: Color(0xff0088CC),
            title: Text("Telegram"),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          preferredSize: Size.fromHeight(60.0)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        backgroundColor: Color(0xff0088CC),
      ),

      //LISTA DO TELEGRAM
      body: ListView.builder(
        itemCount: dados.length,
        itemBuilder: (context, index) {
          var title = dados.elementAt(index);
          return Container(
            width: double.maxFinite,
            height: 98,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 0.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image(
                        width: 70.0,
                        height: 70.0,
                        image: NetworkImage(url),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                'Gustavo: ',
                                style: TextStyle(
                                    color: Color(0xff4682B4), fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(), //Da um espaço entre os elementos
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 0.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "11:45",
                              style: TextStyle(color: Color(0xff808080)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 4.0, left: 10.0),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xffC0C0C0),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                  child: Text(
                                    '200',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    //Linha separadora da lista
                    margin: EdgeInsets.only(left: 70.0),
                    child: Divider(
                      color: Colors.black26,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
