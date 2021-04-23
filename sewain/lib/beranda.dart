import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Beranda'),
              ]),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Click search');
              },
            ),
            IconButton(
              icon: Icon(Icons.camera_alt_outlined),
              onPressed: () {
                print('click search gambar');
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {
                print('click start');
              },
            ),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                  accountName: new Text('Komang Ari Suparta Jaya'),
                  accountEmail: new Text('ari.suparta@undiksha.ac.id'),
                  currentAccountPicture: new GestureDetector(
                    onTap: () {},
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(
                          'https://lh3.google.com/u/1/ogw/ADGmqu_ecV8XCQfQG-eYgiGjOVfgHhwdvd9rJMjhTbVY=s83-c-mo'),
                    ),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/appimages/profil4.jpg'),
                        fit: BoxFit.cover),
                  )),
              new ListTile(
                title: new Text('Notifikasi'),
                trailing: new Icon(Icons.notifications_active_rounded),
              ),
              new ListTile(
                title: new Text('Settings'),
                trailing: new Icon(Icons.settings),
              ),
              new ListTile(
                title: new Text('Log Out'),
                trailing: new Icon(Icons.logout),
              ),
              Divider(
                height: 2,
              ),
              new ListTile(
                title: new Text('Akun'),
                trailing: new Icon(Icons.account_box),
              ),
            ],
          ),
        ),
        body: new ListView(children: <Widget>[
          Image.asset("assets/appimages/tema1.png"),
          Container(
            color: Colors.green[100],
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sewa kendaraan apa saja murah',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        'Rp 300.000',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.local_offer,
                  color: Colors.green[500],
                ),
                Text('Pesan Sekarang!'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.grid_on, color: Colors.blueGrey),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Semua Kategori',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.car_rental, color: Colors.blueGrey),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Mobil',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.motorcycle, color: Colors.blueGrey),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'motor',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.bike_scooter, color: Colors.blueGrey),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Sepeda',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.map, color: Colors.blueGrey),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'map',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.archive_sharp, color: Colors.blueGrey),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Riwayat Transaksi',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
