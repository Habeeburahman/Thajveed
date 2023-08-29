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
  String? gifSource = "assets/gif/blankgif.gif";

  final GlobalKey _imageKey = GlobalKey();

  double _imageWidth = 0.0;
  double _imageHeight = 0.0;
  final _player = AudioPlayer();

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // Call getImageSize() after the image is laid out
      getImageSize();
    });
    super.initState();
  }

  void startAnimation({String? url}) async {
    await _player.setAsset(url ?? "assets/audios/simpleaudio.mp3");

    _player.play();

    _player.processingStateStream.listen((processingState) {
      if (processingState == ProcessingState.completed) {
        gifSource = "assets/gif/blankgif.gif";
        setState(() {});
        print("Audio playback has ended");
      }
    });
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

  void _startAnimationOfKrag() {
    gifSource = "assets/gif/krah.gif";
    startAnimation(url: "assets/audios/krah.mp3");
    setState(() {});
  }

  void _startAnimationOfGown() {
    gifSource = "assets/gif/goin.gif";
    startAnimation(url: "assets/audios/goin.mp3");
    setState(() {});
  }

  void _startAnimationOfHaeh() {
    gifSource = "assets/gif/heh.gif";
    startAnimation(url: "assets/audios/hah.mp3");
    setState(() {});
  }

  void _startAnimationOfHah() {
    gifSource = "assets/gif/haah.gif";

    startAnimation(url: "assets/audios/hhah.mp3");
    setState(() {});
  }

  void _startAnimationOfLam() {
    gifSource = "assets/gif/lam.gif";
    startAnimation(url: "assets/audios/lam.mp3");
    setState(() {});
  }

  void _startAnimationOfAin() {
    gifSource = "assets/gif/hain.gif";
    startAnimation(url: "assets/audios/ain.mp3");
    setState(() {});
  }

  void _startAnimationOfAa() {
    gifSource = "assets/gif/aa.gif";
    startAnimation(url: "assets/audios/hamza.mp3");
    setState(() {});
  }

  void _startAnimationOfLadu() {
    gifSource = "assets/gif/lad.gif";
    startAnimation(url: "assets/audios/lad.mp3");

    setState(() {});
  }

  void _startAnimationOfKaf() {
    gifSource = "assets/gif/kaf.gif";
    startAnimation(url: "assets/audios/kaf.mp3");
    setState(() {});
  }

  void _startAnimationOfQwaf() {
    gifSource = "assets/gif/qaf.gif";
    startAnimation(url: "assets/audios/qaf.mp3");
    setState(() {});
  }

  void _startAnimationOfSheen() {
    gifSource = "assets/gif/sheen.gif";
    startAnimation(url: "assets/audios/sheen.mp3");
    setState(() {});
  }

  void _startAnimationOfJeem() {
    gifSource = "assets/gif/jeem.gif";
    startAnimation(url: "assets/audios/jeem.mp3");
    setState(() {});
  }

  void _startAnimationOfYah() {
    gifSource = "assets/gif/yah.gif";
    startAnimation(url: "assets/audios/yah.mp3");
    setState(() {});
  }

  void _startAnimationOfNoon() {
    gifSource = "assets/gif/noon.gif";
    startAnimation(url: "assets/audios/noon.mp3");
    setState(() {});
  }

  void _startAnimationOfRah() {
    gifSource = "assets/gif/rah.gif";
    startAnimation(url: "assets/audios/rah.mp3");
    setState(() {});
  }

  void _startAnimationOfThwah() {
    gifSource = 'assets/gif/thwah.gif';
    startAnimation(url: "assets/audios/twah.mp3");
    setState(() {});
  }

  void _startAnimationOfDhal() {
    gifSource = "assets/gif/dhal.gif";
    startAnimation(url: "assets/audios/dal.mp3");
    setState(() {});
  }

  void _startAnimationOfThah() {
    gifSource = "assets/gif/thwah.gif";
    startAnimation(url: "assets/audios/thah.mp3");
    setState(() {});
  }

  void _startAnimationOfSa() {
    gifSource = "assets/gif/seen.gif";
    startAnimation(url: "assets/audios/ssah.mp3");
    setState(() {});
  }

  void _startAnimationOflah() {
    gifSource = "assets/gif/lah.gif";
    startAnimation(url: "assets/audios/lah.mp3");
    setState(() {});
  }

  void _startAnimationOfZal() {
    gifSource = 'assets/gif/zal.gif';
    startAnimation(url: "assets/audios/zal.mp3");
    setState(() {});
  }

  void _startAnimationOfSwad() {
    gifSource = 'assets/gif/swad.gif';

    startAnimation(url: "assets/audios/swad.mp3");
    setState(() {});
  }

  void _startAnimationOfZay() {
    gifSource = 'assets/gif/zay.gif';
    startAnimation(url: "assets/audios/zah.mp3");
    setState(() {});
  }

  void _startAnimationOfSeen() {
    gifSource = 'assets/gif/seen.gif';
    startAnimation(url: "assets/audios/seen.mp3");
    setState(() {});
  }

  void _startAnimationOfBah() {
    gifSource = 'assets/gif/bah.gif';
    startAnimation(url: "assets/audios/bah.mp3");
    setState(() {});
  }

  void _startAnimationOfVav() {
    gifSource = 'assets/gif/vav.gif';
    startAnimation(url: "assets/audios/vav.mp3");
    setState(() {});
  }

  void _startAnimationOfMeem() {
    gifSource = 'assets/gif/meem.gif';
    startAnimation(url: "assets/audios/meem.mp3");
    setState(() {});
  }

  void _startAnimationOfFah() {
    gifSource = 'assets/gif/fah.gif';
    startAnimation(url: "assets/audios/fah.mp3");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),

//backgroundColor: Color(0xFFF2DDBE),
        body: Column(
          children: [
            Stack(children: [
              AspectRatio(
                aspectRatio: 10 / 8,
                child: Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      gifSource ?? "assets/gif/blankgif.gif",
                      key: _imageKey,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ]),
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
