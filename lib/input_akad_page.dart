import 'package:asadah/components/button_component.dart';
import 'package:asadah/preview_akad_page.dart';
import 'package:asadah/styles.dart';
import 'package:flutter/material.dart';

class InputAkadPage extends StatefulWidget {
  const InputAkadPage({super.key});

  @override
  State<InputAkadPage> createState() => _InputAkadPageState();
}

class _InputAkadPageState extends State<InputAkadPage> {
  Map<String, dynamic> _data = {"category": "Elektronik", "approvement": false};
  List<String> _categories = ['Elektronik', 'Kendaraan'];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _estimatedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
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
              child: Text("Buat Akad", style: Styles.textHeadingStyle),
            ),
            const SizedBox(height: 40),
            Container(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 200),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(60.0)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama Barang", style: Styles.textLabel),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(height: 20),
                  Text("Tafsiran Marhun", style: Styles.textLabel),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _estimatedController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(height: 20),
                  Text("Jenis Akad", style: Styles.textLabel),
                  const SizedBox(height: 10),
                  ..._categories.map((category) {
                    return ListTile(
                      title: Text(category, style: Styles.textLabel),
                      leading: Radio(
                        value: category,
                        groupValue: _data['category'],
                        onChanged: (value) {
                          setState(() {
                            _data = {..._data, "category": value!};
                          });
                        },
                      ),
                    );
                  }).toList(),
                  const SizedBox(height: 20),
                  CheckboxListTile(
                      title: Text(
                          "Saya Menyetujui Ketentuan Semua Ketentuan yang Berlaku",
                          style: Styles.textLabel),
                      value: _data['approvement'],
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _data = {..._data, "approvement": newValue};
                        });
                      }),
                  const SizedBox(height: 20),
                  ButtonComponent(
                      buttontext: "Lanjutkan",
                      onPressed: () {
                        setState(() {
                          _data = {..._data, "name": _nameController.text, "estimated": _estimatedController.text};
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PreviewAkadPage(data: _data)),
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
