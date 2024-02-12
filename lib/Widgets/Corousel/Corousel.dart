import 'package:flutter/material.dart';

class RotatingImageCarousel extends StatefulWidget {
  const RotatingImageCarousel({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RotatingImageCarouselState createState() => _RotatingImageCarouselState();
}

class _RotatingImageCarouselState extends State<RotatingImageCarousel> {
  final PageController _pageController = PageController(viewportFraction: 0.4);
  List<String> images = [
    "Beauty - Dummy 02.png",
    "biscuit.png",
    "Coins.png",
    "fruit.png",
    "Nykaa.png",
    "Ratandeep.png",
    "Studio 11.png",
    "Tata 1 mg.png"
  ];

  @override
  void initState() {
    super.initState();

    // Add a listener to the PageController to handle the page changes
    _pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 90.0,
          child: PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Transform.scale(
                scale: index == _pageController.page
                    ? 1.0
                    : 0.8, // Adjust the scale as needed
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: 180.0,
          child: const Text(
            "Description text ",
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
