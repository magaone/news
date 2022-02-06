import 'package:flutter/material.dart';
import 'package:kiez_news/config/config.dart';
import 'package:kiez_news/pages/welcome.dart';
import 'package:provider/provider.dart';
import '../blocs/sign_in_bloc.dart';
import '../utils/next_screen.dart';
import 'home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// if you want to run flutter for the first time, you have to do all of this process. We all do that, its a very frustating proces in mac, ah okay
class SplashPage extends StatefulWidget {
  //can you open ios simulator 2nd generation? yes, i dont have mac, so I am not familiar with setup that much, its very easy in windows hmm i understand  i think there are little thinks which we dont see now maybe i will try it again and write you later ? i will have for the 2. order new plan for you i have done the UI Design for the 5 wireframes i wwant that you clone this whole project or write it again in a new project is it possible ? new project won't make any difference.  ah okay hmm let me think why it doesnt work okay lets have break i will write you in one hour oka y? yes okay will search google till then, see you in an hour thank you very much i am very happy to know ou i will fin commercial projects for you , pleasure an d tha;nk)s t:h thanks too hear you in 1 hour byee byee
  SplashPage({Key? key}) : super(key: key);

  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  afterSplash() {
    final SignInBloc sb = context.read<SignInBloc>();
    Future.delayed(Duration(seconds: 7)).then((value) {
      sb.isSignedIn == true || sb.guestUser == true
          ? gotoHomePage()
          : gotoSignInPage();
    }); //Hi, How are you? nice how yre yoi? Good thanks for asking, sorry I delivered the order yesterday actually I am on late delivery on fiverr. no problem bro we have time you can cancel or get 2 more days for it
// no errors yet, these all are warnings... okay i will write later we will wait firstly
  }

  gotoHomePage() {
    final SignInBloc sb = context.read<SignInBloc>();
    if (sb.isSignedIn == true) {
      sb.getDataFromSp();
    }
    nextScreenReplace(context, HomePage());
  }

  gotoSignInPage() {
    nextScreenReplace(context, WelcomePage());
  }

  @override
  void initState() {
    afterSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
            child: SizedBox(
          width: 250.0,
          child: TextLiquidFill(
            text: 'KIEZ NEWS',
            waveColor: Theme.of(context).primaryColor,
            boxBackgroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            boxHeight: 300.0,
          ),
        )));
  }
}
