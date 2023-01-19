import 'package:etsy/pages/search.dart';
import 'package:flutter/material.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const searchBar(),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color.fromARGB(255, 247, 235, 232),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            size: 32,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      RichText(
                        text: const TextSpan(
                          // Here is the explicit parent TextStyle
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'What\'s your style?\n', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Favoriting helps Etsy provide unique\n'),
                            TextSpan(text: 'recommendations, tailored just for you. Tap\n'),
                            TextSpan(text: 'on some heart icons below so Etsy knows\n'),
                            TextSpan(text: 'what you like.')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: const [
                  Text(
                    'Comfortwear',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 24),
                  Icon(
                    Icons.arrow_forward,
                    size: 24,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Image.asset('images/shopping1.png', width: 180),
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset('images/shopping2.png', width: 180),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: const [
                  Text(
                    'Our fave posts',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.arrow_forward,
                    size: 24,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                children: [
                  Image.asset(
                    'images/shopping4.png',
                    height: 250,
                  ),
                  const SizedBox(width: 12),
                  Image.asset(
                    'images/shopping3.png',
                    height: 250,
                  ),
                  const SizedBox(width: 12),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class searchBar extends StatelessWidget {
  const searchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 229, 228, 228),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(
                      MaterialPageRoute(builder: (context) => const Search()),
                    );
                  },
                  child: const Icon(Icons.search)),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Search for anything on Etsy',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                width: 44,
              ),
              const Icon(Icons.photo_camera)
            ],
          ),
        ),
      ),
    );
  }
}
