import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Offset> _points = <Offset>[];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new GestureDetector(
          onPanUpdate: (DragUpdateDetails details) {
            setState(() {
              RenderBox object = context.findRenderObject();
              Offset _localPosition =
              object.globalToLocal(details.globalPosition);
              _points = new List.from(_points)..add(_localPosition);
            });
          },
          onPanEnd: (DragEndDetails details) => _points.add(null),
          child: new CustomPaint(
            painter: new Signature(points: _points),
            size: Size.infinite,
          ),
        ),
      ),
      floatingActionButton:
      new FloatingActionButton(
        child: new Icon(Icons.clear,color: Colors.blue,),backgroundColor: Colors.black,
        onPressed: () => _points.clear(),
      ),

    );

  }
}

class Signature extends CustomPainter {
  List<Offset> points;

  Signature({this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.lightBlue
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 9;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }

    }
  }

  @override
  bool shouldRepaint(Signature oldDelegate) => oldDelegate.points != points;
}
class notlar extends StatelessWidget {
  const notlar({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/b3/27/56/b32756693b9c0d6139d29708db3fb1d6.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin:EdgeInsets.all(3.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => notlar()),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network(
                          'https://images-na.ssl-images-amazon.com/images/I/81nia28xsOL._AC_SL1500_.jpg',
                          // width: 300,
                          height: 200,
                          fit:BoxFit.cover

                      ),
                    ),

                    ListTile(
                      title: Text('Resim'),
                      subtitle: Text('25.05.2020'),


                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin:EdgeInsets.all(3.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => notlar()),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network(
                          'https://www.wikihow.com/images/thumb/1/18/Take-Better-Notes-Step-1-Version-2.jpg/aid11032-v4-728px-Take-Better-Notes-Step-1-Version-2.jpg.webp',
                          // width: 300,
                          height: 200,
                          fit:BoxFit.cover

                      ),
                    ),

                    ListTile(
                      title: Text('Resim'),
                      subtitle: Text('12.05.2020'),


                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 150,
            margin:EdgeInsets.all(2.0),
            child: Card(elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),

                    ListTile(
                      title: Text('Not:'),
                      subtitle: Text('07.05.2020'),

                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                        ),
                        child: Image.network('https://www.kikki-k.com/on/demandware.static/-/Sites-kikki-master-catalogue/default/dw5164d317/images/11200201/11200201-multi.jpg', fit: BoxFit.cover,),

                      ),


                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
class yapilacaklar extends StatelessWidget {
  const yapilacaklar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/b3/27/56/b32756693b9c0d6139d29708db3fb1d6.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            width: 150,
            margin:EdgeInsets.all(2.0),
            child: Card(elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),

                    ListTile(
                      title: Text('Yapılacaklar: 0'),
                      subtitle: Text('Yapılacaklar listesi boş'),

                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                        ),
                        child: Image.network('https://images-na.ssl-images-amazon.com/images/I/61-c1M86BwL.png', fit: BoxFit.cover,),

                      ),


                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
class tumnotlar extends StatelessWidget {
  const tumnotlar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class favoriler extends StatelessWidget {
  const favoriler({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyApp extends StatefulWidget {
  @override

  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  int _selectedTabIndex = 0;

  List _pages = [
    notlar(
      key: PageStorageKey('Page1'),
    ),
    yapilacaklar(
      key: PageStorageKey('Page2'),
    ),


  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Tüm Notlar",
            style:TextStyle(
                color: Colors.black,
                fontSize: 15),),
          iconTheme: new IconThemeData(color: Colors.green),
          backgroundColor: Colors.white),

      body: Center(child: _pages[_selectedTabIndex]),


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note), title: Text("Notlar") , backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.check), title: Text("Yapılacaklar"), backgroundColor: Colors.black),
        ],

      ),
      drawer: Drawer(

        child: ListView(
          children: <Widget>[
        DrawerHeader(
        child: Text(
          'Notlar',
          style: TextStyle( color: Colors.white,
          ),
        ),
          decoration: BoxDecoration(image: DecorationImage(
            image: NetworkImage(
                'https://pm1.narvii.com/6571/e52dbddbbfaaabe7eb1e7546a53651507ef58a36_hq.jpg'),
            fit: BoxFit.cover,
          ),
          ),
        ),
            ListTile(
              leading: Icon(Icons.event_note),
              title: Text('Tüm Notlar',style: TextStyle(fontSize: 13),),


              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tumnotlar()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.star_border),
              title: Text('Favorilerim',style: TextStyle(fontSize: 13),),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => favoriler()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.restore_from_trash),
              title: Text('Yakın Zamanda Silinenler',style: TextStyle(fontSize: 13),),

              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => favoriler()),
                );
              },
            ),

    ],
        ),

      ),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.add),
            backgroundColor: Colors.lightBlueAccent,
            onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            }
        )
    );
  }
}