import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_catalog_flutter/global/global.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.pushNamed('home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colorof.secondaryColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Image(
                image: const AssetImage(Stringof.imgSplash),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
            ),
          ],
        )
      ],
    );
  }
}
