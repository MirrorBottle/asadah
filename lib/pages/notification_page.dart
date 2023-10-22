import 'package:asadah/pages/input_akad_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:asadah/components/button_component.dart';
import 'package:asadah/styles.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Image.asset('assets/images/icon_white.png', height: 70),
        leading: BackButton(color: Colors.white),
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
              child: Text("Notifikasi", style: Styles.textHeadingStyle),
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
                  CupertinoFormRow(
                    prefix: const Text('Aktifkan Notifikasi'),
                    child: CupertinoSwitch(
                      value: selected,
                      onChanged: (value) {
                        setState(() {
                          selected = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  AnimatedContainer(
                    width: selected ? MediaQuery.of(context).size.width : 0,
                    padding: EdgeInsets.all(10),
                    height: selected ? 100 : 0,
                    duration: const Duration(seconds: 1),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    curve: Curves.fastOutSlowIn,
                    child: Row(
                      children: [
                        Icon(Icons.notifications, color: Colors.white, size: 32,),
                        const SizedBox(width: 10,),
                        Flexible(child: Text("Terimakasih sudah mengaktifkan notifikasi, kami akan memberikan informasi terbaik untukmu", style: Styles.textLabel.copyWith(color: Colors.white),))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ButtonComponent(
                    buttontext: "Simpan",
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
