import 'package:klinik_app/ui/pasien_page.dart';
import 'package:klinik_app/ui/pegawai_page.dart';
import 'package:flutter/material.dart';
import 'package:klinik_app/model/home.dart';
import 'package:klinik_app/ui/home_page.dart';
import 'package:klinik_app/ui/pegawai_detail.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _HomePageState();
}

class _HomePageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DATA KLINIK"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("DATA PASIEN"),
              ),
            ),
            onTap: () {
              Home dataPasien = Home(namaHome: "Data Pasien");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienPage(home: dataPasien),
                  ));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("DATA PEGAWAI"),
              ),
            ),
            onTap: () {
              Home dataPegawai = Home(namaHome: "Data Pegawai");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiPage(home: dataPegawai),
                  ));
            },
          ),
        ],
      ),
    );
  }
}