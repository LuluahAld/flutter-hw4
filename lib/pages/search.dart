import 'package:etsy/pages/notif.dart';
import 'package:etsy/pages/reviews.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () {
                      final navigator = Navigator.of(context);
                      navigator.push(
                        MaterialPageRoute(builder: (context) => const Notif()),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 28,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 52,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color.fromARGB(255, 237, 236, 236),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.interests,
                              color: Color.fromARGB(255, 119, 118, 118),
                              size: 30,
                            ),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Color.fromARGB(255, 119, 118, 118),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: double.infinity,
                              width: 1,
                              decoration: const BoxDecoration(color: Colors.grey),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'origami',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(width: 155),
                            const Icon(
                              Icons.close,
                              color: Color.fromARGB(255, 119, 118, 118),
                              size: 28,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              const searchop(title: 'origami', x: 275),
              const SizedBox(height: 24),
              const searchop(title: 'origami paper', x: 212),
              const SizedBox(height: 24),
              const searchop(title: 'origami earrings', x: 190),
              const SizedBox(height: 24),
              const searchop(title: 'origami crane', x: 214),
              const SizedBox(height: 24),
              const searchop(title: 'origami ornament', x: 176),
              const SizedBox(height: 24),
              const searchop(title: 'origami kit', x: 242),
              const SizedBox(height: 24),
              const searchop(title: 'origami stars', x: 218),
              const SizedBox(height: 24),
              const searchop(title: 'origami art', x: 238),
              const SizedBox(
                height: 235,
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: InkWell(
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(
                      MaterialPageRoute(builder: (context) => const Reviews()),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromARGB(255, 192, 190, 190),
                    ),
                    child: const Center(
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class searchop extends StatelessWidget {
  final String title;
  final double x;
  const searchop({Key? key, required this.title, required this.x}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: x,
        ),
        const Icon(Icons.north_west)
      ],
    );
  }
}
