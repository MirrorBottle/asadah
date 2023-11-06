import 'package:asadah/pages/input_akad_page.dart';
import 'package:asadah/providers/page_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:asadah/components/button_component.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PageProvider>(builder: (context, pageData, child) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Image.asset('assets/images/icon_white.png', height: 70),
          leading: const BackButton(color: Colors.white),
        ),
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Notifikasi"),
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
                        value: pageData.isNotificationActive,
                        onChanged: (value) {
                          Provider.of<PageProvider>(context, listen: false)
                              .changeNotification(value);
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedContainer(
                      width: pageData.isNotificationActive ? MediaQuery.of(context).size.width : 0,
                      padding: const EdgeInsets.all(10),
                      height: pageData.isNotificationActive ? 100 : 0,
                      duration: const Duration(seconds: 1),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(10)),
                      curve: Curves.fastOutSlowIn,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 32,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                              child: Text(
                            "Terimakasih sudah mengaktifkan notifikasi, kami akan memberikan informasi terbaik untukmu",
                            style: TextStyle(color: Colors.white),
                          ))
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
    });
  }
}
