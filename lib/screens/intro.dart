import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            children: <Widget>[
              _buildSlide(
                'assets/imgs/banner0.jpg',
                'Perfect Body \nDoing Crossfit \nExercises',
              ),
              _buildSlide(
                'assets/imgs/banner1.jpeg',
                'Perfect Body \nDoing Crossfit \nExercises',
              ),
              _buildSlide(
                'assets/imgs/banner2.jpg',
                'Perfect Body \nDoing Crossfit \nExercises',
              ),
            ],
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: _buildSlideNav(),
          ),
        ],
      ),
    );
  }

  // FOR BUILDING SLIDE NEXT AND SKIP HANDLER
  Row _buildSlideNav() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _NavButtons(
          label: 'SKIP',
          clickCallback: () => {
            Navigator.pushReplacementNamed(context, '/home'),
          },
        ),
        _buildSlidePagination(currentPageIndex),
        _NavButtons(
          label: 'NEXT',
          clickCallback: () => {
            if (currentPageIndex == 2)
              {
                Navigator.pushReplacementNamed(context, '/home'),
              }
            else
              {
                _pageController.nextPage(
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  curve: Curves.easeInOut,
                )
              }
          },
        ),
      ],
    );
  }

  // FOR BUILDING EACH SLIDE CARD
  Stack _buildSlide(String image, String description) {
    return Stack(
      children: [
        Positioned(
          left: 0.0,
          right: 0.0,
          top: 0.0,
          bottom: 0.0,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        Positioned(
          left: 20.0,
          bottom: 100.0,
          right: 0.0,
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  // FOR BUILDING PAGINATION DOTS
  Row _buildSlidePagination(int currentIndex) {
    List<Widget> paginations = [];

    for (var i = 0; i < 3; i++) {
      paginations.add(
        AnimatedContainer(
          width: currentIndex == i ? 20.0 : 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(horizontal: 3.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              currentIndex == i ? 20.0 : 50.0,
            ),
          ),
          duration: const Duration(
            milliseconds: 500,
          ),
        ),
      );
    }

    return Row(
      children: paginations,
    );
  }
}

class _NavButtons extends StatelessWidget {
  final String label;
  final Function clickCallback;

  const _NavButtons({
    Key? key,
    required this.label,
    required this.clickCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        clickCallback();
      },
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
    );
  }
}
