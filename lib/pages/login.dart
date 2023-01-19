import 'package:etsy/pages/notif.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            children: [
              const SizedBox(
                height: 56,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Continue as guest',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 56,
              ),
              const Text(
                'Your destination for inspiration',
                style: TextStyle(
                  fontFamily: 'JosefinSlab',
                  fontSize: 27,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Image.asset(
                'images/login.png',
                width: 1000,
                height: 235,
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Enter your email to continue',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 196, 196, 196), width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(9)),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'judy.mobbin2@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(
                    MaterialPageRoute(builder: (context) => const Notif()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    color: Colors.black,
                  ),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 1,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 196, 196),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('OR'),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 1,
                    width: 170,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 196, 196),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              boxes(
                img: Image.asset(
                  'images/apple.png',
                ),
                title: ' Continue with Apple',
              ),
              const SizedBox(
                height: 10,
              ),
              boxes(
                img: Image.asset(
                  'images/google.png',
                ),
                title: 'Continue with Google',
              ),
              const SizedBox(
                height: 10,
              ),
              boxes(
                img: Image.asset(
                  'images/facebook.png',
                ),
                title: 'Continue with Facebook',
              ),
              const SizedBox(
                height: 26,
              ),
              const Text(
                  'By tapping continue with Apple, Facebook, or Google you agree to Etsy\'s Terms of Use and Privacy',
                  style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 72, 72, 72))),
            ],
          ),
        ),
      ),
    );
  }
}

class boxes extends StatelessWidget {
  Image img;
  String title;
  boxes({Key? key, required this.img, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(35)),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            const SizedBox(
              width: 60,
            ),
            img,
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
