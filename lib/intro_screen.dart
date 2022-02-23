import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kzn/bottom_nav/bottombar.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: '⭐ LET’S  MAKE  MYANMAR A BETTER  PLACE  THROUGH  MANAGEMENT ⭐',
          body: '❝  KZN Learning မှ ပညာရေး အားဖြင့် လူထု အကျိုးစီးပွား ဘ၀ ကို တိုးတက်အောင် ဆောင်ရွက်ပေးရန် ရည်ရွယ်ပါတယ်  ❞',
          image: buildImage('assets/splash_screen/Slide3.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: '⭐ THE  FUTURE  DEPENDS  ON WHAT  YOU  DO  TODAY ⭐',
          body: '❝  ယနေ့ သင်ယူလေ့လာနေခြင်း သည် သင့်၏အနာဂတ်ကို ပုံဖော်နေခြင်းသာ ဖြစ်ပါတယ်  ❞ ',
          image: buildImage('assets/splash_screen/Slide2.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "⭐  DON'T BE BUSY ,  BE PRODUCTIVE  ⭐",
          body: '❝  နည်းဗျူဟာ နှင့် Plan ကြိုတင် ဆွဲထားခြင်းသည် အလုပ်တစ်ခု မစခင်ကတည်းက အောင်မြင်ဖို့ သေချာစေပါတယ်  ❞ ',
          image: buildImage('assets/splash_screen/Slide1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: '⭐  LEARN TODAY   ➡   LEAD TOMORROW   ➡  BE THE BEST  ⭐',
          body: '❝  မနက်ဖြန်မှာ ခေါင်းဆောင်ကောင်း လုပ်ဖို့ ယနေ့ သင်ယူလေ့လာလိုက်ပါ  ❞ ',
          footer: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ButtonWidget(
              text: "LET'S GET STARTED",
              onClicked: () => goToHome(context),
            ),
          ),
          image: buildImage('assets/splash_screen/Slide4.png'),
          decoration: getPageDecoration(),
        ),
      ],
      done: Text("", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text('SKIP', style: TextStyle(fontSize: 16, color: Colors.indigo[900]),),
      onSkip: () => goToHome(context),
      next: Icon(Icons.forward_outlined, size: 30, color: Colors.indigo[900]),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),
      globalBackgroundColor: Theme.of(context).primaryColor,
      skipFlex: 0,
      nextFlex: 0,
      // isProgressTap: false,
      // isProgress: false,
      // showNextButton: false,
      // freeze: true,
      // animationDuration: 1000,
    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => BottomBar()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    //activeColor: Colors.orange,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
    titlePadding: EdgeInsets.only(top: 20),
    descriptionPadding: EdgeInsets.only(top: 40).copyWith(bottom: 0),
    imagePadding: EdgeInsets.only(top: 10),
    pageColor: Colors.white,
  );
}


class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
    onPressed: onClicked,
    color: Theme.of(context).primaryColor,
    shape: StadiumBorder(),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    child: Text(text,
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}