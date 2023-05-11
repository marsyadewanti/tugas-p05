import 'package:klinik_app/model/home.dart';
import 'package:flutter/material.dart';
import 'package:klinik_app/model/pegawai.dart';
import 'package:klinik_app/ui/pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  final Home home;

  const PegawaiPage({super.key, required this.home});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Marsya Dewanti Khairunissa"),
              ),
            ),
            onTap: () {
              Pegawai MarsyaDewantiKhairunissa = Pegawai(
                nip: "12210175",
                namaPegawai: "Marsya Dewanti Khairunissa",
                tanggalLahir: "06 Maret 2003",
                nomorTelepon: "083879126998",
                email: "12210175@bsi.ac.id",
                password: "12345",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PegawaiDetail(pegawai: MarsyaDewantiKhairunissa),
                  ));
            },
          ),
        ],
      ),
    );
  }
}