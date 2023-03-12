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
          _getheader(),
        ],
      ),
    );
  }

  Widget _getheader() {
    return Column(
      children: [
        SizedBox(height: 20.0),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
          radius: 80.0,
        ),
        SizedBox(height: 20.0),
        Text('علی محمدزاده هستم برنامه نویس فول استک',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900)),
        SizedBox(height: 20.0),
        Text(
          'برنامه نویس موبایل و وب هستم و دوس دارم هرچیزی رو که یاد میگیرم یاد بدم',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12.0),
        _getRowIcons(),
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
}
