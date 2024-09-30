import 'package:flutter/material.dart';
import 'package:mencoba_kuis/dummy_menu.dart';

class Home extends StatelessWidget {
  final String username;

  Home({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.purple.shade200,
        centerTitle: true,
      ),
      body: Column(
        children: [
          _welcome(),
          _menu(),
        ],
      ),
    );
  }

  Widget _welcome() {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.red.shade200,
      child: Text(
        'Selamat Datang! $username. Ini adalah Home ^^',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _menu() {
    return Expanded(
      child: ListView.builder(
        itemCount: foodMenuList.length, // Menentukan jumlah item
        itemBuilder: (context, index) {
          final foodItem = foodMenuList[index]; // Mengambil item makanan
          return ListTile(
            title: Text(foodItem.name),
            subtitle: Text(foodItem.description),
            leading: Image.asset(foodItem.imageAsset), // Menampilkan gambar
          );
        },
      ),
    );
  }
}
