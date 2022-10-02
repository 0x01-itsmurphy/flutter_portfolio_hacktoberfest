import 'package:flutter/material.dart';
import 'package:flutter_portfolio_hacktoberfest/HomePage/home_page.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isButtonHover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 16, 45),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1567906020831150081/oJ7mKaaj_400x400.jpg'),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Hacktoberfest \n2022",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Vanguard',
                  fontSize: 50,
                  letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: HomePage(),
                    pageAnimationType: FadeAnimationTransition()));
              },
              onHover: (value) {
                setState(() {
                  isButtonHover = value;
                  print(value);
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellowAccent,
                      Color.fromARGB(255, 124, 126, 255),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.only(
                  left: isButtonHover ? 50 : 30,
                  right: isButtonHover ? 50 : 30,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Start".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'JetBrainsMono',
                    fontSize: 24,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
