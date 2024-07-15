import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String image;

  const SlideInfo({
    required this.title,
    required this.caption,
    required this.image,
  });
}

final slides = <SlideInfo>[
  const SlideInfo(
    title: 'Busca la comida',
    caption:
        'lorem ipsum voluptate dolore amet dolore dolore amet amet amet amet',
    image: 'assets/images/1.png',
  ),
  const SlideInfo(
    title: 'Entrega Rapida',
    caption:
        'lorem ipsum voluptate dolore amet dolore dolore amet amet amet amet',
    image: 'assets/images/2.png',
  ),
  const SlideInfo(
    title: 'Disfruta la comida',
    caption:
        'lorem ipsum voluptate dolore amet dolore dolore amet amet amet amet',
    image: 'assets/images/3.png',
  ),
];

class AppTutorialScrenn extends StatefulWidget {
  static const name = '/app_tutorial_screen';

  const AppTutorialScrenn({super.key});

  @override
  State<AppTutorialScrenn> createState() => _AppTutorialScrennState();
}

class _AppTutorialScrennState extends State<AppTutorialScrenn> {
  final PageController pageController = PageController();
  bool isLastSlide = false;

  @override
  void initState() {
    super.initState();
    pageController.addListener(
      () {
        final page = pageController.page ?? 0;
        if (!isLastSlide && page >= (slides.length - 1.5)) {
          setState(() {
            isLastSlide = true;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: slides
                .map(
                  (slide) => _Slide(
                    title: slide.title,
                    caption: slide.caption,
                    image: slide.image,
                  ),
                )
                .toList(),
          ),
          Positioned(
            right: 20.0,
            top: 50.0,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: () => context.pop(),
            ),
          ),
          isLastSlide
              ? Positioned(
                  right: 30.0,
                  bottom: 30.0,
                  child: FadeInRight(
                    from: 15.0,
                    delay: const Duration(microseconds: 500),
                    child: FilledButton(
                      child: const Text('Siguiente'),
                      onPressed: () {},
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String image;

  const _Slide({
    required this.title,
    required this.caption,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(height: 20),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 10),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
