import 'package:etsy/pages/search.dart';
import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  const Notif({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 125,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(60, 30, 0, 0),
                  child: Text(
                    'Stay in the know',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'JosefinSlab',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(59, 50, 50, 0),
                child: Text(
                  'Enable push notifications and never miss a thing:',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 30, 50, 0),
                child: Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(35),
                        ),
                      ),
                      child: const Icon(
                        Icons.text_snippet_outlined,
                        size: 32,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Keep track of orders',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 30, 50, 0),
                child: Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(35),
                        ),
                      ),
                      child: const Icon(
                        Icons.chat_bubble_outline,
                        size: 32,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Chat with sellers',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 30, 50, 0),
                child: Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(35),
                        ),
                      ),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 32,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Learn about sales, special \noffers, and promotions',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 230, 30, 0),
                child: Container(
                  width: 415,
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    color: Color.fromARGB(255, 16, 16, 16),
                  ),
                  child: const Center(
                    child: Text(
                      'Turn on notifications',
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: InkWell(
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(
                      MaterialPageRoute(builder: (context) => const Search()),
                    );
                  },
                  child: const Text(
                    'Not Now',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
