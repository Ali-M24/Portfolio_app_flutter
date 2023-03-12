import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.red[700],
      title: Text('اپلیکیشن پرتفولیو'),
      centerTitle: true,
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          _getMainContent(),
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return Column(
      children: [
        SizedBox(height: 20.0),
        _getMainContentHeader(),
        SizedBox(height: 12.0),
        _getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12.0),
        _getResume()
      ],
    );
  }

  Widget _getMainContentHeader() {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
          radius: 80.0,
        ),
        SizedBox(height: 20.0),
        Text(
          'علی محمدزاده هستم برنامه نویس فول استک',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 20.0),
        Text(
          'برنامه نویس موبایل و وب هستم و دوس دارم هرچیزی رو که یاد میگیرم یاد بدم',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _getRowIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareInstagram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.squareGithub),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
      ],
    );
  }

  Widget _getSkillCards() {
    var titles = ['Flutter', 'Android', 'Java', 'Dart', 'Kotlin'];
    return Wrap(
      children: [
        for (var path in titles)
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Card(
              elevation: 6,
              child: Column(
                children: [
                  Container(
                    height: 64.0,
                    child: Image(
                      image: AssetImage('assets/images/$path.png'),
                      width: 60.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('$path'),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _getResume() {
    var myResumeTexts = [
      'برنامه نویس فرانت اند در شرکت پلاتین',
      'برنامه نویس فریلنسر موبایل',
      'برنامه نویس بک اند با نود جی اس و اکسپرس'
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          SizedBox(height: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: double.infinity),
              for (var resumeText in myResumeTexts)
                Text(
                  '$resumeText',
                  textDirection: TextDirection.rtl,
                )
            ],
          )
        ],
      ),
    );
  }
}
