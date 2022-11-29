import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  CardsPage({Key? key}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> with TickerProviderStateMixin {
  late Animation<double> _animation;
  bool _goDown = false;

  @override
  void initState() {
    super.initState();

    AnimationController _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.linear);


    Future.delayed(const Duration(milliseconds: 1000), () {
    _animationController.forward();
      _goDown = true;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(
                    right: 24.0, left: 24, top: 8, bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FadeInDown(
                          child: const Text("سلام مرجان",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              )),
                          delay: const Duration(milliseconds: 100),
                          duration: const Duration(milliseconds: 800),
                        ),
                        FadeInDown(
                          child: const Text("خوش اومدی!",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              )),
                          delay: const Duration(milliseconds: 150),
                          duration: const Duration(milliseconds: 600),
                        )
                      ],
                    )),
                    FadeInLeft(
                      child: Image.asset(
                        "assets/images/user.png",
                        width: 35,
                        height: 35,
                      ),
                      delay: const Duration(milliseconds: 300),
                      duration: const Duration(milliseconds: 600),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: 370,
                height: 260,
                child: Stack(
                  children: [
                    AnimatedAlign(
                      alignment:
                          _goDown ? Alignment.bottomCenter : Alignment.center,
                      duration: const Duration(milliseconds: 1000),
                      child: RotationTransition(
                        turns: Tween(
                                begin: 0.toDouble(), end: (25 / 360).toDouble())
                            .animate(_animation),
                        child: Card(
                          elevation: 18.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: Image.asset(
                              "assets/images/bank_card.png",
                              colorBlendMode: BlendMode.darken,
                              color: Colors.grey[700],
                              fit: BoxFit.fill,
                              width: 345,
                              height: 140,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AnimatedAlign(
                      duration: const Duration(milliseconds: 800),
                      alignment:
                          _goDown ? Alignment.bottomCenter : Alignment.center,
                      child: RotationTransition(
                        turns: Tween(
                                begin: 0.toDouble(), end: (10 / 360).toDouble())
                            .animate(_animation),
                        child: Card(
                          elevation: 18.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: Image.asset(
                              "assets/images/bank_card.png",
                              colorBlendMode: BlendMode.darken,
                              color: Colors.grey[600],
                              fit: BoxFit.fill,
                              width: 345,
                              height: 140,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 60.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Image.asset(
                        "assets/images/bank_card.png",
                        width: 370,
                        fit: BoxFit.fill,
                        height: 220,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              FadeInDown(
                delay: const Duration(milliseconds: 1300),
                duration: const Duration(milliseconds: 600),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 24.0, left: 24, top: 8, bottom: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("مبلغ کیف پول شما",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              )),
                          Text("92,000 تومان",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FadeInRight(
                      delay: const Duration(milliseconds: 1500),
                      duration: const Duration(milliseconds: 800),
                      child: Card(
                        margin: const EdgeInsets.only(right: 16),
                        elevation: 18,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: const Color(0xFFFEACAD),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 32, left: 32, top: 16, bottom: 16),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/briefcase.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text("حقوق",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16)),
                              const SizedBox(
                                height: 13,
                              ),
                              const Text("افزایش مقدار",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              const SizedBox(
                                height: 13,
                              ),
                              const Text("3,000,000 تومان",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: FadeInLeft(
                      delay: const Duration(milliseconds: 1500),
                      duration: const Duration(milliseconds: 800),
                      child: Card(
                        margin: const EdgeInsets.only(left: 16),
                        elevation: 18,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: const Color(0xFFDDC4FC),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 32, left: 32, top: 16, bottom: 16),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/paypal.png",
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text("پی پال",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16)),
                              const SizedBox(
                                height: 13,
                              ),
                              const Text("ورودی درگاه",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              const SizedBox(
                                height: 13,
                              ),
                              const Text("45,000 تومان",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
