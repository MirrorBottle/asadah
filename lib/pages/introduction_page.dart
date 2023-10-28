import 'package:asadah/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Lanjut',
        finishButtonTextStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
          color: Colors.white
        ),
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        skipIcon: Icon(Icons.arrow_forward, color: Colors.white),
        onFinish: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainPage()),
          );
        },
        skipTextButton: const Text('Skip'),
        trailing: const Text('Login'),
        controllerColor: Theme.of(context).colorScheme.primary,
        background: [
          Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: SvgPicture.asset('assets/svg/onboarding-1.svg',
                      height: 340),
                ),
              )),
          Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: SvgPicture.asset('assets/svg/onboarding-2.svg',
                      height: 340),
                ),
              )),
          Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: SvgPicture.asset('assets/svg/onboarding-3.svg',
                      height: 340),
                ),
              )),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 480,
                ),
                Text('Dimulai Secara Online!', style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10,),
                Text('Memulai akad mudah tanpa ribet harus datang ke tempat terlebih dahulu.', style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text('Sesuaikan dengan Kebutuhanmu', style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10,),
                Text('Atur lama biaya titip mulai dari 15 hari hingga 3 bulan lamanya.', style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text('Langsung Cair Kurang dari 24 Jam', style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10,),
                Text('Setelah validasi dan barang diterima, pinjaman langsung ada di tanganmu', style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}