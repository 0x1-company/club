import 'package:club/components/ink_fore.dart';
import 'package:club/feature/connect_wallet/connect_wallet.dart';
import 'package:club/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset(
              Assets.svg('party-in-club'),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                'by tapping “let’s go”, you ackowledge that you have read the privacy policy, and agree to the terms of services,',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 9,
                ),
              ),
            ),
            const SizedBox(height: 40),
            InkFore(
              onTap: (context) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ConnectWalletPage(),
                  ),
                );
              },
              child: Container(
                width: 130,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0, 1],
                    colors: [Color(0xFF56DDE9), Color(0xFF9660E8)],
                  ),
                ),
                child: Center(
                  child: Row(
                    children: const [
                      Spacer(),
                      Icon(Icons.check),
                      SizedBox(width: 8),
                      Text(
                        "LET'S GO",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 11,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}
