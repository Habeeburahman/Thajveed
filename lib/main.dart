import 'package:flutter/material.dart';
import 'package:flutter_ripple/flutter_ripple.dart';
import 'dart:math';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:stroke_text/stroke_text.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, diviceType) {
      return const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomePage());
    });
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tabWidth = 820;
  // var cacheManager = DefaultCacheManager();
  List<String> audioUrls = [
    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',

    // Add more audio URLs as needed
  ];
  // Future<void> getAllAudios() async {
  //   for (String audioLink in audioUrls) {
  //     await getAudio(audioLink);
  //   }
  //   setState(() {
  //     isDownloaded = true;
  //   });
  // }

  // Future<void> getAudio(String url) async {
  //   await cacheManager.downloadFile(url);
  // }

  final GlobalKey _imageKey = GlobalKey();

  double _imageWidth = 0.0;
  double _imageHeight = 0.0;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // Call getImageSize() after the image is laid out
      getImageSize();
    });
    super.initState();
  }

  void getImageSize() {
    final RenderBox? imageBox =
        _imageKey.currentContext?.findRenderObject() as RenderBox?;
    if (imageBox != null && imageBox.hasSize) {
      setState(() {
        _imageWidth = imageBox.size.width;
        _imageHeight = imageBox.size.height;
        print(_imageHeight);
        print(_imageWidth);
      });
    }
  }

  final GlobalKey<ArabicLetterState> globalKeyOfKrag =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfGown =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfHaeh =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfAin =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfHah =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfAA =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfSah =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfThwah =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfThah =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfDhal =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfLahu =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfZal =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfSwad =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfSeen =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfZay =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfBah =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfMeem =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfFah =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfVav =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfNoon =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfRah =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfJeem =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfSheen =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfYah =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfLam =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfLadu =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfKaf =
      GlobalKey<ArabicLetterState>();

  final GlobalKey<ArabicLetterState> globalKeyOfQwaf =
      GlobalKey<ArabicLetterState>();

  void _startAnimationOfKrag() {
    globalKeyOfKrag.currentState?.startAnimation();
  }

  void _startAnimationOfGown() {
    globalKeyOfGown.currentState?.startAnimation();
  }

  void _startAnimationOfHaeh() {
    globalKeyOfHaeh.currentState?.startAnimation();
  }

  void _startAnimationOfHah() {
    globalKeyOfHah.currentState?.startAnimation();
  }

  void _startAnimationOfLam() {
    globalKeyOfLam.currentState?.startAnimation();
  }

  void _startAnimationOfAin() {
    globalKeyOfAin.currentState?.startAnimation();
  }

  void _startAnimationOfAa() {
    globalKeyOfAA.currentState?.startAnimation();
  }

  void _startAnimationOfLadu() {
    globalKeyOfLadu.currentState?.startAnimation();
  }

  void _startAnimationOfKaf() {
    globalKeyOfKaf.currentState?.startAnimation();
  }

  void _startAnimationOfQwaf() {
    globalKeyOfQwaf.currentState?.startAnimation();
  }

  void _startAnimationOfSheen() {
    globalKeyOfSheen.currentState?.startAnimation();
  }

  void _startAnimationOfJeem() {
    globalKeyOfJeem.currentState?.startAnimation();
  }

  void _startAnimationOfYah() {
    globalKeyOfYah.currentState?.startAnimation();
  }

  void _startAnimationOfNoon() {
    globalKeyOfNoon.currentState?.startAnimation();
  }

  void _startAnimationOfRah() {
    globalKeyOfRah.currentState?.startAnimation();
  }

  void _startAnimationOfThwah() {
    globalKeyOfThwah.currentState?.startAnimation();
  }

  void _startAnimationOfDhal() {
    globalKeyOfDhal.currentState?.startAnimation();
  }

  void _startAnimationOfThah() {
    globalKeyOfThah.currentState?.startAnimation();
  }

  void _startAnimationOfSa() {
    globalKeyOfSah.currentState?.startAnimation();
  }

  void _startAnimationOflah() {
    globalKeyOfLahu.currentState?.startAnimation();
  }

  void _startAnimationOfZal() {
    globalKeyOfZal.currentState?.startAnimation(
        url: "https://samplelib.com/lib/preview/mp3/sample-9s.mp3");
  }

  void _startAnimationOfSwad() {
    globalKeyOfSwad.currentState?.startAnimation();
  }

  void _startAnimationOfZay() {
    globalKeyOfZay.currentState?.startAnimation();
  }

  void _startAnimationOfSeen() {
    globalKeyOfSeen.currentState?.startAnimation();
  }

  void _startAnimationOfBah() {
    globalKeyOfBah.currentState?.startAnimation();
  }

  void _startAnimationOfVav() {
    globalKeyOfVav.currentState?.startAnimation();
  }

  void _startAnimationOfMeem() {
    globalKeyOfMeem.currentState?.startAnimation();
  }

  void _startAnimationOfFah() {
    globalKeyOfFah.currentState?.startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color.fromRGBO(194, 32, 32, 1),

        // backgroundColor: Color(0xFFF2DDBE),
        body: Column(
          children: [
            Container(
              width: 100.w,
              height: 46.h,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/image/humanwithoutmarksedited.png', // Replace this with your image path
                      key: _imageKey,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    left: 50.w,
                    bottom: 40.h,
                    right: 10.w,
                    child: Text(
                      "s",
                      style: TextStyle(
                          color: Colors.red, backgroundColor: Colors.white),
                    ),
                  ),
                  Positioned(
                      left: 20.w,
                      bottom: 20.h,
                      right: 20.w,
                      child: ArabicLetter(
                        letter: "خ",
                        key: globalKeyOfKrag,
                      )),
                  Positioned(
                      left: 50.w,
                      bottom: 40.h,
                      right: 10.w,
                      child: ArabicLetter(
                        letter: "غ",
                        key: globalKeyOfGown,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ح",
                        key: globalKeyOfHaeh,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ه",
                        key: globalKeyOfHah,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "أ",
                        key: globalKeyOfAA,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ع",
                        key: globalKeyOfAin,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ق",
                        key: globalKeyOfQwaf,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ك",
                        key: globalKeyOfKaf,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ل",
                        key: globalKeyOfLam,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ض",
                        key: globalKeyOfLadu,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ج",
                        key: globalKeyOfJeem,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ش",
                        key: globalKeyOfSheen,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ي",
                        key: globalKeyOfYah,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ن",
                        key: globalKeyOfNoon,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .1,
                      child: ArabicLetter(
                        letter: "ر",
                        key: globalKeyOfRah,
                      )),
                  Positioned(
                      left: 20.w,
                      bottom: 20.h,
                      right: 20.w,
                      child: ArabicLetter(
                        letter: "و",
                        key: globalKeyOfVav,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .3,
                      child: ArabicLetter(
                        letter: "ب",
                        key: globalKeyOfBah,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .3,
                      child: ArabicLetter(
                        letter: "م",
                        key: globalKeyOfMeem,
                      )),
                  Positioned(
                      left: width * .4,
                      top: height * .3,
                      child: ArabicLetter(
                        letter: "ف",
                        key: globalKeyOfFah,
                      )),
                  Positioned(
                      left: width * .3,
                      top: height * .2,
                      child: ArabicLetter(
                        letter: "ذ",
                        key: globalKeyOfZal,
                      )),
                  Positioned(
                      left: width * .3,
                      top: height * .2,
                      child: ArabicLetter(
                        letter: "ث",
                        key: globalKeyOfSah,
                      )),
                  Positioned(
                      left: width * .3,
                      top: height * .2,
                      child: ArabicLetter(
                        letter: "ظ",
                        key: globalKeyOfLahu,
                      )),
                  Positioned(
                      left: width * .3,
                      top: height * .2,
                      child: ArabicLetter(
                        letter: "ص",
                        key: globalKeyOfSwad,
                      )),
                  Positioned(
                      left: width * .3,
                      top: height * .2,
                      child: ArabicLetter(
                        letter: "س",
                        key: globalKeyOfSeen,
                      )),
                  Positioned(
                      left: width * .3,
                      top: height * .2,
                      child: ArabicLetter(
                        letter: "ز",
                        key: globalKeyOfZay,
                      )),
                  Positioned(
                      left: width * .3,
                      top: height * .2,
                      child: ArabicLetter(
                        letter: "ط",
                        key: globalKeyOfThwah,
                      )),
                  Positioned(
                      left: width * .3,
                      top: height * .2,
                      child: ArabicLetter(
                        letter: "د",
                        key: globalKeyOfDhal,
                      )),
                  Positioned(
                      right: width * .20,
                      bottom: height * .8,
                      child: ArabicLetter(
                        letter: "ت",
                        key: globalKeyOfThah,
                      )),
                ],
              ),
            ),

            // Image.asset(
            //   "assets/image/humanwithoutmarksedited.png",
            //   fit: BoxFit.contain,
            // ),
            buildButtons(width, context)
          ],
        ));
  }

  Column buildButtons(double width, BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              width: width,
              child: LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth > tabWidth) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      getHuroofuShafath(),
                      getHuroofuQalq(),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      getHuroofuShafath(),
                      getHuroofuQalq(),
                    ],
                  );
                }
              }),
            ),
            huroofuLisan(width),
          ],
        ),
      ],
    );
  }

  Widget huroofuLisan(double width) {
    return SizedBox(
      width: width,
      // color: Color.fromRGBO(185, 0, 111, .4),
      child: Column(
        children: [
          Text(
            "حُرُوفُ اللِسَانِ",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 2.0,
              runSpacing: 2.0,
              //    mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LetterButton(
                  function: _startAnimationOfLadu,
                  name: "ض",
                ),
                LetterButton(
                  function: _startAnimationOfLam,
                  name: "ل",
                ),
                LetterButton(
                  function: _startAnimationOfKaf,
                  name: "ك",
                ),
                LetterButton(
                  function: _startAnimationOfQwaf,
                  name: "ق",
                ),
                LetterButton(
                  function: _startAnimationOfJeem,
                  name: "ج",
                ),
                LetterButton(
                  function: _startAnimationOfSheen,
                  name: "ش",
                ),
                LetterButton(
                  function: _startAnimationOfYah,
                  name: "ي",
                ),
                LetterButton(
                  function: _startAnimationOfThwah,
                  name: "ط",
                ),
                LetterButton(
                  function: _startAnimationOfDhal,
                  name: "د",
                ),
                LetterButton(
                  function: _startAnimationOfThah,
                  name: "ت",
                ),
                LetterButton(
                  function: _startAnimationOfSa,
                  name: "ث",
                ),
                LetterButton(
                  function: _startAnimationOfZal,
                  name: "ذ",
                ),
                LetterButton(
                  function: _startAnimationOflah,
                  name: "ظ",
                ),
                LetterButton(
                  function: _startAnimationOfNoon,
                  name: "ن",
                ),
                LetterButton(
                  function: _startAnimationOfRah,
                  name: "ر",
                ),
                LetterButton(
                  function: _startAnimationOfNoon,
                  name: "ن",
                ),
                LetterButton(
                  function: _startAnimationOfRah,
                  name: "ر",
                ),
                LetterButton(
                  function: _startAnimationOfSwad,
                  name: "ص",
                ),
                LetterButton(
                  function: _startAnimationOfSeen,
                  name: "س",
                ),
                LetterButton(
                  function: _startAnimationOfZay,
                  name: "ز",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getHuroofuQalq() {
    return Column(
      children: [
        Text(
          "حُرُوفُ الحَلْقِ",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 2.0,
            runSpacing: 2.0,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LetterButton(
                function: _startAnimationOfKrag,
                name: "خ",
              ),
              LetterButton(
                function: _startAnimationOfGown,
                name: "غ",
              ),
              LetterButton(
                function: _startAnimationOfHaeh,
                name: "ح",
              ),
              LetterButton(
                function: _startAnimationOfAin,
                name: "ع",
              ),
              LetterButton(
                function: _startAnimationOfHah,
                name: "ه",
              ),
              LetterButton(
                function: _startAnimationOfAa,
                name: "أ",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column getHuroofuShafath() {
    return Column(
      children: [
        Text(
          "حُرُوفُ الشَّفَةِ",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LetterButton(
              function: _startAnimationOfVav,
              name: "و",
            ),
            LetterButton(
              function: _startAnimationOfBah,
              name: "ب",
            ),
            LetterButton(
              function: _startAnimationOfMeem,
              name: "م",
            ),
            LetterButton(
              function: _startAnimationOfFah,
              name: "ف",
            ),
          ],
        ),
      ],
    );
  }
}

class ArabicLetter extends StatefulWidget {
  ArabicLetter({required this.key, required this.letter}) : super(key: key);
  String letter;
  @override
  Key key;

  @override
  ArabicLetterState createState() => ArabicLetterState();
}

class ArabicLetterState extends State<ArabicLetter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  Random random = Random();
  Color color = Colors.black;
  AnimationStatusListener? animationStatus;
  final _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    // _player.setUrl("https://samplelib.com/lib/preview/mp3/sample-3s.mp3");

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _scaleAnimation = Tween<double>(begin: 0.0, end: 7)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
      }
    });
  }

  void startAnimation({String? url}) async {
    await _player.setAsset("assets/audios/simpleaudio.mp3");
    _controller.reset();

    _controller.forward();

    // await Future.delayed(const Duration(milliseconds: 200));
    _player.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                double animationValue = _controller.value;
                animationValue = animationValue.clamp(0.1, 5.0);
                double opacity = 1.0;
                opacity = opacity.clamp(0.5, 50.0);
                return Opacity(
                  opacity: opacity,
                  child: Transform.scale(
                    scale: _scaleAnimation.value * animationValue,
                    child: Stack(
                      children: [
                        // Center(
                        //     child: CustomPaint(
                        //   painter: RipplePainter(_scaleAnimation.value),
                        // )),
                        FlutterRipple(
                          duration: const Duration(seconds: 20),
                          radius: 30,
                          rippleColor: const Color.fromARGB(255, 253, 154, 154),
                          child: Center(
                            child: StrokeText(
                              textColor: Colors.redAccent,
                              strokeColor: Colors.white,
                              strokeWidth: 3,
                              text: widget.letter,
                              textStyle: const TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class LetterButton extends StatelessWidget {
  LetterButton({Key? key, required this.name, required this.function})
      : super(key: key);
  String name;
  Function() function;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 33.sp,
      height: 33.sp,
      child: NeumorphicButton(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(8),
          onPressed: function,
          child: Center(
            child: Text(
              name,
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}

// class RipplePainter extends CustomPainter {
//   final double animationValue;
//   final int numberOfCircles = 6; // Adjust the number of circles as desired
//   final List<Color> gradientColors = [
//     Colors.blue,
//     Colors.green,
//     Colors.red,
//     Colors.orange,
//     Colors.purple,
//   ]; // Customize the gradient colors as desired

//   RipplePainter(this.animationValue);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final maxRadius = size.width / 2;
//     final radiusStep = maxRadius + 1;

//     final gradientIndex = (animationValue * gradientColors.length).floor();

//     for (int i = 0; i < numberOfCircles; i++) {
//       final paint = Paint()
//         ..style = PaintingStyle.stroke
//         ..strokeWidth = .8;

//       final center = Offset(size.width / 2, size.height / 2);
//       final radius = radiusStep * i * animationValue;

//       final opacity = (1.0 - (i / numberOfCircles)).clamp(0.0, 1.0);
//       final gradientColor =
//           gradientColors[(gradientIndex + i) % gradientColors.length];
//       paint.color = gradientColor.withOpacity(opacity);

//       canvas.drawCircle(center, radius, paint);
//     }
//   }

//   @override
//   bool shouldRepaint(RipplePainter oldDelegate) {
//     return animationValue != oldDelegate.animationValue;
//   }
// }
