import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  List<IconData> _items = [
    Icons.facebook,
    Icons.youtube_searched_for,
    Icons.camera_alt,
    Icons.phone,
    Icons.map,
    Icons.email,
    Icons.settings,
    Icons.person,
    Icons.shopping_cart,
    Icons.music_note,
    Icons.wifi,
    Icons.share,
    Icons.home,
    Icons.alarm,
    Icons.lock,
    Icons.lightbulb,
    Icons.fingerprint,
    Icons.favorite,
    Icons.notifications,
    Icons.star,
    Icons.cloud,
    Icons.book,
    Icons.attach_file,
    Icons.backup,
    Icons.bluetooth,
    Icons.build,
    Icons.code,
    Icons.computer,
    Icons.flight,
    Icons.games,
    Icons.language,
    Icons.print,
    Icons.home,
    Icons.alarm,
    Icons.lock,
    Icons.lightbulb,
    Icons.favorite,
    Icons.notifications,
    Icons.star,
    Icons.cloud,
    Icons.book,
    Icons.computer,
  ];

  /* tidak terpakai lagi karena ngga pakai angka
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 50; i++) {
      _items.add(i);
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: _items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,), //kotak 
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center( //TAMBAHAN untuk ubah ikon
                  child: Icon(
                  _items[index],
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
