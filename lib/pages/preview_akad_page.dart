import 'package:asadah/pages/input_akad_page.dart';
import 'package:flutter/material.dart';

import 'package:asadah/components/button_component.dart';

class PreviewAkadPage extends StatefulWidget {
  const PreviewAkadPage({super.key, required this.data});

  final Map<String, dynamic> data;
  @override
  State<PreviewAkadPage> createState() => _PreviewAkadPageState();
}

class _PreviewAkadPageState extends State<PreviewAkadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Image.asset('assets/images/icon_white.png', height: 70),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Data Akad", style: Theme.of(context).textTheme.displayLarge,),
            ),
            const SizedBox(height: 40),
            Container(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 200),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(60.0)),
                color:  Theme.of(context).colorScheme.background,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Text("Nama Barang", style: Theme.of(context).textTheme.bodySmall),
                    trailing: Text(widget.data['name'], style: Theme.of(context).textTheme.bodySmall),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: Text("Tafsiran Marhun", style: Theme.of(context).textTheme.bodySmall),
                    trailing: Text(widget.data['estimated'], style: Theme.of(context).textTheme.bodySmall),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: Text("Jenis Akad", style: Theme.of(context).textTheme.bodySmall),
                    trailing: Text(widget.data['category'], style: Theme.of(context).textTheme.bodySmall),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: Text("Persetujuan", style: Theme.of(context).textTheme.bodySmall),
                    trailing: Text(widget.data['approvement'] ? "Ya" : "Tidak", style: Theme.of(context).textTheme.bodySmall),
                  ),
                  const SizedBox(height: 20),
                  ButtonSecondaryComponent(
                      buttontext: "Kembali",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InputAkadPage()),
                        );
                      },
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
