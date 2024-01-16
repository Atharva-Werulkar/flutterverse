import 'package:flutter/material.dart';
import 'package:flutterverse/custom_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          forceMaterialTransparency: true,
          title: const Text('PortFolio',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // Text
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi there',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        'I am Karma Akabane',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 20,
                  ),

                  //Profile Picture
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 20,
                  ),

                  //Who am I
                  const Text(
                    textAlign: TextAlign.center,
                    'I am a Flutter Developer & a UI/UX Designer',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                    ),
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 30,
                  ),

                  //About Me
                  const Text(
                    textAlign: TextAlign.center,
                    'About Me',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 20,
                  ),

                  //About Me Description
                  const Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                    ),
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 30,
                  ),

                  //social media icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.black,
                            size: 40,
                          )),
                    ],
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 40,
                  ),

                  //Tech Stack
                  const Text(
                    'Technologies I work with',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                    ),
                  ),
                  //SizedBox
                  const SizedBox(
                    height: 20,
                  ),

                  //card with logo and text in listview which is scrollable horizontally
                  SizedBox(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: const [
                          SizedBox(
                            width: 20,
                          ),
                          CustomCard(
                            text: 'Flutter',
                            icon: Icons.flutter_dash,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CustomCard(
                            text: 'Dart',
                            icon: FontAwesomeIcons.database,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CustomCard(
                            text: 'Firebase',
                            icon: FontAwesomeIcons.fire,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CustomCard(
                            text: 'Figma',
                            icon: FontAwesomeIcons.figma,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
