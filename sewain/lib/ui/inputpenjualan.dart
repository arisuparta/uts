import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:tugas/models/penjualan.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_time_patterns.dart';

class InputPenjualan extends StatefulWidget {
  final Penjualan penjualan;
  InputPenjualan(this.penjualan);
  @override
  _InputPenjualanState createState() => _InputPenjualanState(this.penjualan);
}

class _InputPenjualanState extends State<InputPenjualan> {
  Penjualan penjualan;
  _InputPenjualanState(this.penjualan);
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();
  final format = DateFormat('yyyy-MM-dd');
  @override
  Widget build(BuildContext context) {
    if (penjualan != null) {
      nameController.text = penjualan.name;
      descController.text = penjualan.desc;
      jumlahController.text = penjualan.jumlah;
      tanggalController.text = penjualan.tanggal;
    }
    return Scaffold(
        appBar: AppBar(
          title: penjualan == null
              ? Text("Trasaksi Baru")
              : Text("Update Transaksi"),
          leading: Icon(Icons.keyboard_arrow_left),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "nama",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.0))),
                    onChanged: (value) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: descController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "desc",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.0))),
                    onChanged: (value) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: jumlahController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "jumlah",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.0))),
                    onChanged: (value) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: tanggalController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        labelText: "tanggal",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3.0))),
                    onChanged: (value) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          "Simpan",
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          if (penjualan == null) {
                            penjualan = Penjualan(
                                nameController.text,
                                descController.text,
                                jumlahController.text,
                                tanggalController.text);
                          } else {
                            penjualan.name = nameController.text;
                            penjualan.desc = descController.text;
                            penjualan.jumlah = jumlahController.text;
                            penjualan.tanggal = tanggalController.text;
                          }
                          Navigator.pop(context, penjualan);
                        },
                      )),
                      Container(
                        width: 5.0,
                      ),
                      Expanded(
                          child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          "Batal",
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ))
                    ],
                  ),
                )
              ],
            )));
  }
}
