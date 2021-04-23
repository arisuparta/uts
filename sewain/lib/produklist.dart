import 'package:flutter/material.dart';
import 'detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Kendaraan")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "JAZZ",
                        description:
                            "Mobil dengan tampilan masa kini dan keren ",
                        price: 350000,
                        image: "mobil1.png",
                        star: 5,
                      )));
            },
            child: ProductBox(
              name: "JAZZ",
              description: "Mobil dengan tampilan masa kini dan keren.",
              price: 350000,
              image: "mobil1.png",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "AYLA",
                        description:
                            "Mobil kecil dengan desain elegan, cocok untuk keluarga kecilmu.",
                        price: 250000,
                        image: "mobil2.jpg",
                        star: 4,
                      )));
            },
            child: ProductBox(
              name: "AYLA",
              description:
                  "Mobil kecil dengan desain elegan, cocok untuk keluarga kecilmu",
              price: 250000,
              image: "mobil2.jpg",
              star: 4,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "TERIOS",
                        description:
                            "Mobil dengan desain mewah, yang dapat merubah derajat anda",
                        price: 750000,
                        image: "mobil3.png",
                        star: 5,
                      )));
            },
            child: ProductBox(
              name: "TERIOS",
              description:
                  "Mobil dengan desain mewah, yang dapat merubah derajat anda.",
              price: 750000,
              image: "mobil3.png",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "APV",
                        description:
                            "Mobil keluarga dengan kapasitas penumpang yang banyak.",
                        price: 300000,
                        image: "mobil4.png",
                        star: 3,
                      )));
            },
            child: ProductBox(
              name: "APV",
              description:
                  "Mobil keluarga dengan kapasitas penumpang yang banyak.",
              price: 300000,
              image: "mobil4.png",
              star: 3,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "KARIMUN",
                        description: "Mobil dengan desain simpel dan mungil.",
                        price: 300000,
                        image: "mobil5.png",
                        star: 3,
                      )));
            },
            child: ProductBox(
              name: "KARIMUN",
              description: "Mobil dengan desain simpel dan mungil.",
              price: 300000,
              image: "mobil5.png",
              star: 3,
            ),
          )
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.yellow,
      ));
    }
    return Container(
      padding: EdgeInsets.all(10),
      //height: 120
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + image,
              width: 150,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(this.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      Text(this.description),
                      Text("Price: " + this.price.toString(),
                          style: TextStyle(color: Colors.blueAccent)),
                      Row(children: <Widget>[
                        Row(
                          children: children,
                        )
                      ])
                    ],
                  )),
            )
          ]),
    );
  }
}
