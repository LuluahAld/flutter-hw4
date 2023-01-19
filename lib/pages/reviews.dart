import 'package:etsy/pages/shopping.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Item Reviews (4)',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
            child: reviewSection(),
          ),
          const sortingSection(),
          const SizedBox(
            height: 28,
          ),
          Center(
            child: Image.asset(
              'images/camera.png',
              width: 230,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Center(
            child: Text(
              'No results found',
              style: TextStyle(
                fontFamily: 'JosefinSlab',
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text(
                'Try removing one or more of the filters or start over',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(120, 40, 120, 140),
              child: InkWell(
                onTap: () {
                  final navigator = Navigator.of(context);
                  navigator.push(
                    MaterialPageRoute(builder: (context) => const Shopping()),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'See all Reviews',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class sortingSection extends StatelessWidget {
  const sortingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 32, 24, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(width: 2, color: Colors.black),
              color: const Color.fromARGB(255, 225, 225, 225),
            ),
            child: Row(
              children: const [
                SizedBox(width: 4),
                Icon(Icons.import_export_outlined),
                Text(
                  'Most Recent',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            width: 130,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(width: 2, color: Colors.black),
              color: const Color.fromARGB(255, 225, 225, 225),
            ),
            child: const Center(
                child: Text(
              'With photos',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            )),
          ),
        ],
      ),
    );
  }
}

class reviewSection extends StatelessWidget {
  const reviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        reviewBar(
          first: '5 star',
          second: '100%',
          color: Colors.orangeAccent,
          x: 16,
        ),
        SizedBox(
          height: 8,
        ),
        reviewBar(
          first: '4 star',
          second: '0%',
          color: Color.fromARGB(255, 218, 218, 218),
          x: 32,
        ),
        SizedBox(
          height: 8,
        ),
        reviewBar(
          first: '3 star',
          second: '0%',
          color: Color.fromARGB(255, 218, 218, 218),
          x: 32,
        ),
        SizedBox(
          height: 8,
        ),
        reviewBar(
          first: '2 star',
          second: '0%',
          color: Color.fromARGB(255, 218, 218, 218),
          x: 32,
        ),
        SizedBox(
          height: 8,
        ),
        reviewBar(
          first: '1 star',
          second: '0%',
          color: Color.fromARGB(255, 218, 218, 218),
          x: 32,
        ),
      ],
    );
  }
}

class reviewBar extends StatelessWidget {
  final String first;
  final String second;
  final color;
  final double x;
  const reviewBar({
    Key? key,
    required this.first,
    required this.second,
    required this.color,
    required this.x,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(first,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey,
            )),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            height: 8,
          ),
        ),
        SizedBox(
          width: x,
        ),
        Text(second,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey,
            )),
      ],
    );
  }
}
