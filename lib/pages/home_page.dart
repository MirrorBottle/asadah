import 'package:asadah/components/button_component.dart';
import 'package:asadah/pages/input_akad_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 220,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Theme.of(context).colorScheme.primary),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text(
                  "Total Pinjaman Akad",
                  style: TextStyle(
                      color: Color(0xFFEEEEEE), fontSize: 18, height: .5),
                ),
                const Text("Rp 2.100.000",
                    style: TextStyle(color: Color(0xFFEEEEEE), fontSize: 42, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Biaya Titip",
                          style: TextStyle(
                              color: Color(0xFFEEEEEE), fontSize: 16),
                        ),
                        Text(
                          "Rp. 200.000",
                          style: TextStyle(
                              color: Color(0xFFEEEEEE),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InputAkadPage()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).brightness == Brightness.light ? Colors.white : Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(40)),
                        width: 170,
                        height: 60,
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).brightness == Brightness.light ? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(40)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Ajukan Akad",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Akad Terbaru",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  tileColor: const Color(0xFFEFEFEF),
                  title: const Text("ASD-05-131023-007",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  subtitle: const Text("HP OPPO A58 6/128 GB"),
                  trailing: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(40)),
                    padding: const EdgeInsets.all(2),
                    child: const Icon(Icons.chevron_right_rounded, color: Colors.white,),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  tileColor: const Color(0xFFEFEFEF),
                  title: const Text("ASD-01-161023-004",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  subtitle: const Text("HP REDMI 10 2022 6/128 GB"),
                  trailing: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(40)),
                    padding: const EdgeInsets.all(2),
                    child: const Icon(Icons.chevron_right_rounded, color: Colors.white,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
