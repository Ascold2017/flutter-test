import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wheather Forecast',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          centerTitle: true,
          title: Text('Wheather Forecast'),
        ),
        body: _body(),
      ),
    );
  }
}

Widget _body() {
  return Container(
    color: Colors.red[400],
    padding: EdgeInsets.all(8),
    child: Column(
      children: <Widget>[
        _textField(),
        _cityDetail(),
        _temperatureDetail(),
        _extraWheatherDetail(),
        _bottomDetail()
      ],
    ),
  );
}

Widget _textField() {
  return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              labelText: 'Enter City Name',
              labelStyle: TextStyle(color: Colors.white))));
}

Widget _cityDetail() {
  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Text(
          'Murmansk Oblast, RU',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 30),
        ),
      ),
      Text(
        'Friday, Mar 20, 2020',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 16),
      )
    ],
  );
}

Widget _temperatureDetail() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.wb_sunny,
          color: Colors.white,
          size: 60,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '14* F',
              style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
            ),
            Text(
              'LIGHT SNOW',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            )
          ],
        )
      ],
    ),
  );
}

Widget _extraWheatherDetail() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                '5',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'km/h',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                '3',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              '%',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  '20',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )),
            Text(
              '%',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _bottomDetail() {
  return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 8),
          child: Center(
            child: Text('7-DAY WHEATHER FORECAST', style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
        ),
        Container(
            height: 100,
            child: ListView.builder(
                itemCount: 7,
                itemExtent: 150,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return Container(
                      color: Colors.white54,
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Text(
                              'Friday',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '6 * F',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                              Icon(
                                Icons.wb_sunny,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          )
                        ],
                      ));
                }))
      ]));
}
