import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Screen1(),
    routes: <String, WidgetBuilder>{
      '/screen1': (BuildContext context) => new Screen1(),
      '/screen2': (BuildContext context) => new Screen2(),
    },
  ));
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Screen1");
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("My Applications"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: new FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/screen2');
                    },
                    label: Text("Login"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 200,
                  width: 390,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    shadowColor: Colors.black,
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/image/chelsea.png',
                            height: 130, width: 150),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 150,
                          child: Text(
                              "Chelsea Football Club adalah sebuah klub sepak bola Inggris yang bermarkas di Fulham, London. Chelsea didirikan pada tahun 1905 dan kini berkompetisi di Liga Utama Inggris."),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 200,
                  width: 390,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    shadowColor: Colors.black,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 30, left: 20),
                          width: 150,
                          child: Text(
                              "Real Madrid Club de Fútbol, umumnya dikenal sebagai Real Madrid, adalah klub sepak bola profesional yang berbasis di Madrid, Spanyol."),
                        ),
                        Image.asset('assets/image/realmadrid.png',
                            height: 130, width: 150),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 200,
                  width: 390,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    shadowColor: Colors.black,
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/image/persib.png',
                            height: 130, width: 150),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          width: 150,
                          child: Text(
                              "Persib Bandung adalah klub sepak bola Indonesia yang berdiri pada 14 Maret 1933, berbasis di Bandung, Jawa Barat. Persib saat ini bermain di Liga 1 Indonesia."),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Login");
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlueAccent.shade700,
        title: new Text("Login"),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/image/auth.jpg"),
          fit: BoxFit.cover,
        )),
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: new Column(
            children: <Widget>[
              Image.asset('assets/image/logoupn.png', height: 138, width: 200),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    labelText: 'Username',
                    hintText: 'Enter your username',
                  ),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.lock),
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FloatingActionButton.extended(
                        onPressed: () {}, label: Text("Login")),
                    TextButton(
                      onPressed: () {},
                      child: Text("Register?"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
