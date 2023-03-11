import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../my_flutter_app_icons.dart' as bagIcon;
import '../disc.dart' as discIcon;
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

class Post {
  final String userName;
  final String text;
  final String? courseName;
  final DateTime dateTime;

  Post({
    required this.userName,
    required this.text,
    this.courseName,
    required this.dateTime,
  });
}

class Profile {
  final String name;
  final String favoriteCourse;
  final double handicap;
  final String profilePicture;
  final List<Disc> discInventory;
  final Map<String, List<Disc>> bagInventory;

  Profile({
    required this.name,
    required this.favoriteCourse,
    required this.handicap,
    required this.profilePicture,
    required this.discInventory,
    required this.bagInventory,
  });
}

class Disc {
  final String name;
  final String brand;
  final String type;
  final String? color;
  final DateTime? lostDate;
  final String? lostCourse;
  final int speed;
  final int glide;
  final int turn;
  final int fade;

  Disc({
    required this.name,
    required this.brand,
    required this.type,
    required this.speed,
    required this.glide,
    required this.turn,
    required this.fade,
    this.color,
    this.lostDate,
    this.lostCourse,
  });
}

Profile userProfile = Profile(
  name: 'Brock',
  favoriteCourse: 'Cedar Hill',
  handicap: 4.3,
  profilePicture: 'https://via.placeholder.com/150',
  discInventory: [
    Disc(
      name: 'Aviar',
      brand: 'Innova',
      type: 'Putter',
      speed: 2,
      glide: 3,
      turn: 0,
      fade: 0,
    ),
    Disc(
      name: 'Buzzz',
      brand: 'Discraft',
      type: 'Midrange',
      speed: 5,
      glide: 4,
      turn: -1,
      fade: 1,
    ),
    Disc(
      name: 'FD',
      brand: 'Discmania',
      type: 'Fairway Driver',
      speed: 7,
      glide: 6,
      turn: -1,
      fade: 1,
    ),
    Disc(
      name: 'Destroyer',
      brand: 'Innova',
      type: 'Driver',
      speed: 12,
      glide: 5,
      turn: -1,
      fade: 3,
    ),
    Disc(
      name: 'Enforcer',
      brand: 'Dynamic Discs',
      type: 'Driver',
      speed: 12,
      glide: 4,
      turn: 0,
      fade: 4,
    ),
  ],
  bagInventory: {
    'Cedar Hill': [
      Disc(
        name: 'Aviar',
        brand: 'Innova',
        type: 'Putter',
        speed: 2,
        glide: 3,
        turn: 0,
        fade: 0,
      ),
      Disc(
        name: 'Buzzz',
        brand: 'Discraft',
        type: 'Midrange',
        speed: 5,
        glide: 4,
        turn: -1,
        fade: 1,
      ),
      Disc(
        name: 'FD',
        brand: 'Discmania',
        type: 'Fairway Driver',
        speed: 7,
        glide: 6,
        turn: -1,
        fade: 1,
      ),
      Disc(
        name: 'Destroyer',
        brand: 'Innova',
        type: 'Driver',
        speed: 12,
        glide: 5,
        turn: -1,
        fade: 3,
      ),
      Disc(
        name: 'Enforcer',
        brand: 'Dynamic Discs',
        type: 'Driver',
        speed: 12,
        glide: 4,
        turn: 0,
        fade: 4,
      ),
    ],
  },
);

List<Post> feedPosts = [
  Post(
    userName: 'Brock',
    text: 'Just got a new disc, a blue Discraft Buzzz!',
    dateTime: DateTime.now(),
  ),
  Post(
    userName: 'Sarah',
    text:
        'Playing a round at Turner Park tomorrow at 2pm, anyone want to join?',
    courseName: 'Turner Park',
    dateTime: DateTime.now().add(Duration(days: 1)),
  ),
  Post(
    userName: 'Chris',
    text:
        'Lost a yellow Innova Destroyer on hole 5 at Cedar Hill, if anyone finds it let me know!',
    courseName: 'Cedar Hill',
    dateTime: DateTime.now().subtract(Duration(days: 3)),
  ),
];
Map<String, List<Map<String, Object>>> discs = {
  "discs": [
    {
      "name": "avair",
      "type": "Putter",
      "speed": 2,
      "glide": 3,
      "turn": 0,
      "fade": 1,
      "frontView": "assets/discs/avair.png",
      "sideView": "assets/discs/sv_avair.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.001, "y": 21.908},
        {"x": -0.003, "y": 41.957},
        {"x": -0.007, "y": 60.342},
        {"x": -0.011, "y": 77.253},
        {"x": -0.016, "y": 92.871},
        {"x": -0.019, "y": 107.372},
        {"x": -0.021, "y": 120.924},
        {"x": -0.019, "y": 133.689},
        {"x": -0.012, "y": 145.82},
        {"x": 0.002, "y": 157.466},
        {"x": 0.025, "y": 168.767},
        {"x": 0.059, "y": 179.857},
        {"x": 0.108, "y": 190.863},
        {"x": 0.175, "y": 201.906},
        {"x": 0.261, "y": 213.098},
        {"x": 0.371, "y": 224.546}
      ]
    },
    {
      "name": "luna",
      "type": "Putter",
      "speed": 3,
      "glide": 3,
      "turn": 0,
      "fade": 3,
      "frontView": "assets/discs/luna.png",
      "sideView": "assets/discs/sv_luna.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.003, "y": 23.271},
        {"x": -0.011, "y": 44.567},
        {"x": -0.025, "y": 64.097},
        {"x": -0.044, "y": 82.064},
        {"x": -0.068, "y": 98.662},
        {"x": -0.095, "y": 114.079},
        {"x": -0.124, "y": 128.498},
        {"x": -0.154, "y": 142.093},
        {"x": -0.183, "y": 155.033},
        {"x": -0.208, "y": 167.478},
        {"x": -0.225, "y": 179.583},
        {"x": -0.234, "y": 191.495},
        {"x": -0.229, "y": 203.357},
        {"x": -0.207, "y": 215.301},
        {"x": -0.165, "y": 227.455},
        {"x": -0.097, "y": 239.94}
      ]
    },
    {
      "name": "suspect",
      "type": "Midrange",
      "speed": 4,
      "glide": 3,
      "turn": 0,
      "fade": 3,
      "frontView": "assets/discs/suspect.png",
      "sideView": "assets/discs/sv_suspect.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.001, "y": 24.634},
        {"x": -0.003, "y": 47.177},
        {"x": -0.006, "y": 67.851},
        {"x": -0.008, "y": 86.869},
        {"x": -0.009, "y": 104.438},
        {"x": -0.005, "y": 120.755},
        {"x": 0.005, "y": 136.013},
        {"x": 0.025, "y": 150.396},
        {"x": 0.058, "y": 164.082},
        {"x": 0.109, "y": 177.239},
        {"x": 0.183, "y": 190.03},
        {"x": 0.283, "y": 202.611},
        {"x": 0.416, "y": 215.128},
        {"x": 0.589, "y": 227.724},
        {"x": 0.807, "y": 240.53},
        {"x": 1.078, "y": 253.673}
      ]
    },
    {
      "name": "zone",
      "type": "Midrange",
      "speed": 4,
      "glide": 3,
      "turn": 0,
      "fade": 3,
      "frontView": "assets/discs/zone.png",
      "sideView": "assets/discs/sv_zone.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.001, "y": 24.333},
        {"x": -0.003, "y": 46.601},
        {"x": -0.006, "y": 67.023},
        {"x": -0.008, "y": 85.81},
        {"x": -0.008, "y": 103.167},
        {"x": -0.003, "y": 119.292},
        {"x": 0.009, "y": 134.375},
        {"x": 0.032, "y": 148.6},
        {"x": 0.07, "y": 162.143},
        {"x": 0.128, "y": 175.175},
        {"x": 0.209, "y": 187.858},
        {"x": 0.321, "y": 200.347},
        {"x": 0.468, "y": 212.793},
        {"x": 0.659, "y": 225.336},
        {"x": 0.899, "y": 238.112},
        {"x": 1.197, "y": 251.248}
      ]
    },
    {
      "name": "compass",
      "type": "Midrange",
      "speed": 5,
      "glide": 5,
      "turn": 0,
      "fade": 1,
      "frontView": "assets/discs/compass.png",
      "sideView": "assets/discs/sv_compass.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.001, "y": 21.908},
        {"x": -0.003, "y": 41.957},
        {"x": -0.007, "y": 60.342},
        {"x": -0.011, "y": 77.253},
        {"x": -0.016, "y": 92.871},
        {"x": -0.019, "y": 107.372},
        {"x": -0.021, "y": 120.924},
        {"x": -0.019, "y": 133.689},
        {"x": -0.012, "y": 145.82},
        {"x": 0.002, "y": 157.466},
        {"x": 0.025, "y": 168.767},
        {"x": 0.059, "y": 179.857},
        {"x": 0.108, "y": 190.863},
        {"x": 0.175, "y": 201.906},
        {"x": 0.261, "y": 213.098},
        {"x": 0.371, "y": 224.546}
      ]
    },
    {
      "name": "eagle",
      "type": "Fairway Driver",
      "speed": 7,
      "glide": 4,
      "turn": -1,
      "fade": 3,
      "frontView": "assets/discs/eagle.png",
      "sideView": "assets/discs/sv_eagle.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.001, "y": 30.073},
        {"x": -0.003, "y": 57.593},
        {"x": -0.007, "y": 82.83},
        {"x": -0.011, "y": 106.043},
        {"x": -0.015, "y": 127.482},
        {"x": -0.019, "y": 147.387},
        {"x": -0.02, "y": 165.989},
        {"x": -0.018, "y": 183.509},
        {"x": -0.011, "y": 200.16},
        {"x": 0.004, "y": 216.145},
        {"x": 0.028, "y": 231.655},
        {"x": 0.065, "y": 246.876},
        {"x": 0.115, "y": 261.98},
        {"x": 0.184, "y": 277.134},
        {"x": 0.273, "y": 292.491},
        {"x": 0.387, "y": 308.199}
      ]
    },
    {
      "name": "f2",
      "type": "Fairway Driver",
      "speed": 7,
      "glide": 5,
      "turn": -1,
      "fade": 3,
      "frontView": "assets/discs/f2.png",
      "sideView": "assets/discs/sv_f2.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.004, "y": 34.869},
        {"x": -0.015, "y": 66.778},
        {"x": -0.034, "y": 96.036},
        {"x": -0.059, "y": 122.941},
        {"x": -0.087, "y": 147.776},
        {"x": -0.116, "y": 170.814},
        {"x": -0.141, "y": 192.315},
        {"x": -0.157, "y": 212.525},
        {"x": -0.16, "y": 231.68},
        {"x": -0.142, "y": 250.002},
        {"x": -0.096, "y": 267.7},
        {"x": -0.014, "y": 284.972},
        {"x": 0.114, "y": 302.003},
        {"x": 0.297, "y": 318.966},
        {"x": 0.546, "y": 336.021},
        {"x": 0.873, "y": 353.314}
      ]
    },
    {
      "name": "firebird",
      "type": "Fairway Driver",
      "speed": 9,
      "glide": 3,
      "turn": 0,
      "fade": 4,
      "frontView": "assets/discs/firebird.png",
      "sideView": "assets/discs/sv_firebird.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.001, "y": 33.826},
        {"x": -0.003, "y": 64.78},
        {"x": -0.005, "y": 93.163},
        {"x": -0.007, "y": 119.262},
        {"x": -0.005, "y": 143.353},
        {"x": 0.003, "y": 165.7},
        {"x": 0.02, "y": 186.553},
        {"x": 0.05, "y": 206.153},
        {"x": 0.098, "y": 224.726},
        {"x": 0.17, "y": 242.488},
        {"x": 0.272, "y": 259.64},
        {"x": 0.409, "y": 276.374},
        {"x": 0.59, "y": 292.867},
        {"x": 0.822, "y": 309.288},
        {"x": 1.115, "y": 325.788},
        {"x": 1.476, "y": 342.511}
      ]
    },
    {
      "name": "trace",
      "type": "Driver",
      "speed": 11,
      "glide": 5,
      "turn": -1,
      "fade": 2,
      "frontView": "assets/discs/trace.png",
      "sideView": "assets/discs/sv_trace.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.006, "y": 45.295},
        {"x": -0.023, "y": 86.744},
        {"x": -0.053, "y": 124.743},
        {"x": -0.093, "y": 159.672},
        {"x": -0.143, "y": 191.89},
        {"x": -0.198, "y": 221.739},
        {"x": -0.257, "y": 249.539},
        {"x": -0.315, "y": 275.595},
        {"x": -0.366, "y": 300.19},
        {"x": -0.405, "y": 323.589},
        {"x": -0.425, "y": 346.038},
        {"x": -0.419, "y": 367.765},
        {"x": -0.378, "y": 388.976},
        {"x": -0.292, "y": 409.861},
        {"x": -0.153, "y": 430.591},
        {"x": 0.052, "y": 451.317},
        {"x": 0.333, "y": 472.17}
      ]
    },
    {
      "name": "sidewinder",
      "type": "Driver",
      "speed": 11,
      "glide": 5,
      "turn": -3,
      "fade": 1,
      "frontView": "assets/discs/sidewinder.png",
      "sideView": "assets/discs/sv_sidewinder.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.012, "y": 38.274},
        {"x": -0.049, "y": 73.298},
        {"x": -0.111, "y": 105.411},
        {"x": -0.197, "y": 134.936},
        {"x": -0.305, "y": 162.182},
        {"x": -0.431, "y": 187.445},
        {"x": -0.571, "y": 211.003},
        {"x": -0.719, "y": 233.122},
        {"x": -0.866, "y": 254.054},
        {"x": -1.004, "y": 274.033},
        {"x": -1.123, "y": 293.283},
        {"x": -1.211, "y": 312.01},
        {"x": -1.256, "y": 330.407},
        {"x": -1.244, "y": 348.651},
        {"x": -1.159, "y": 366.906},
        {"x": -0.984, "y": 385.32}
      ]
    },
    {
      "name": "wraith",
      "type": "Driver",
      "speed": 11,
      "glide": 5,
      "turn": -1,
      "fade": 3,
      "frontView": "assets/discs/wraith.png",
      "sideView": "assets/discs/sv_wraith.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.005, "y": 43.317},
        {"x": -0.02, "y": 82.956},
        {"x": -0.045, "y": 119.297},
        {"x": -0.079, "y": 152.703},
        {"x": -0.118, "y": 183.521},
        {"x": -0.161, "y": 212.077},
        {"x": -0.202, "y": 238.683},
        {"x": -0.237, "y": 263.63},
        {"x": -0.261, "y": 287.192},
        {"x": -0.265, "y": 309.628},
        {"x": -0.242, "y": 331.176},
        {"x": -0.184, "y": 352.057},
        {"x": -0.081, "y": 372.475},
        {"x": 0.078, "y": 392.617},
        {"x": 0.305, "y": 412.65},
        {"x": 0.611, "y": 432.724}
      ]
    },
    {
      "name": "destroyer",
      "type": "Driver",
      "speed": 12,
      "glide": 5,
      "turn": -1,
      "fade": 3,
      "frontView": "assets/discs/destroyer.png",
      "sideView": "assets/discs/sv_destroyer.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.003, "y": 45.581},
        {"x": -0.014, "y": 87.291},
        {"x": -0.031, "y": 125.529},
        {"x": -0.053, "y": 160.678},
        {"x": -0.078, "y": 193.099},
        {"x": -0.104, "y": 223.134},
        {"x": -0.127, "y": 251.107},
        {"x": -0.142, "y": 277.323},
        {"x": -0.144, "y": 302.068},
        {"x": -0.128, "y": 325.606},
        {"x": -0.086, "y": 348.185},
        {"x": -0.012, "y": 370.034},
        {"x": 0.103, "y": 391.36},
        {"x": 0.268, "y": 412.354},
        {"x": 0.492, "y": 433.185},
        {"x": 0.787, "y": 454.005},
        {"x": 1.163, "y": 474.947}
      ]
    },
    {
      "name": "colussus",
      "type": "Driver",
      "speed": 14,
      "glide": 5,
      "turn": -1,
      "fade": 3,
      "frontView": "assets/discs/colossus.png",
      "sideView": "assets/discs/sv_colossus.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.007, "y": 48.335},
        {"x": -0.03, "y": 92.564},
        {"x": -0.067, "y": 133.111},
        {"x": -0.117, "y": 170.379},
        {"x": -0.178, "y": 204.75},
        {"x": -0.247, "y": 236.583},
        {"x": -0.318, "y": 266.22},
        {"x": -0.385, "y": 293.98},
        {"x": -0.441, "y": 320.16},
        {"x": -0.479, "y": 345.038},
        {"x": -0.489, "y": 368.87},
        {"x": -0.461, "y": 391.893},
        {"x": -0.382, "y": 414.321},
        {"x": -0.24, "y": 436.347},
        {"x": -0.022, "y": 458.145},
        {"x": 0.287, "y": 479.866},
        {"x": 0.705, "y": 501.643}
      ]
    }
  ]
};
List<Disc> discInventory = [
  Disc(
    name: 'Aviar',
    brand: 'Innova',
    type: 'Putter',
    speed: 2,
    glide: 3,
    turn: 0,
    fade: 0,
  ),
  Disc(
    name: 'Buzzz',
    brand: 'Discraft',
    type: 'Midrange',
    speed: 5,
    glide: 4,
    turn: -1,
    fade: 1,
  ),
  Disc(
    name: 'FD',
    brand: 'Discmania',
    type: 'Fairway Driver',
    speed: 7,
    glide: 6,
    turn: -1,
    fade: 1,
  ),
  Disc(
    name: 'Destroyer',
    brand: 'Innova',
    type: 'Driver',
    speed: 12,
    glide: 5,
    turn: -1,
    fade: 3,
  ),
  Disc(
    name: 'Enforcer',
    brand: 'Dynamic Discs',
    type: 'Driver',
    speed: 12,
    glide: 4,
    turn: 0,
    fade: 4,
  ),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const FlightsPage(),
    DiscGolfBagPage(),
    RoundsPage(),
    FeedPage(feedPosts: feedPosts, userProfile: userProfile)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.blue, // Add this line
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.flight),
            label: 'Flights',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.score),
            label: 'Rounds',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.score),
            label: 'Social',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class FlightsPage extends StatefulWidget {
  const FlightsPage({Key? key}) : super(key: key);

  @override
  _FlightsPageState createState() => _FlightsPageState();
}

int _discIndex = 0;

class _FlightsPageState extends State<FlightsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Column(
                  children: [
                    Image.asset(
                        discs["discs"]!
                            .elementAt(_discIndex)["sideView"]
                            .toString(),
                        height: 40),
                    PathExample(discs, _discIndex),
                    const Spacer(),
                    const Icon(Icons.arrow_drop_down_outlined),
                    buildCarousel(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  CarouselSlider buildCarousel() {
    return CarouselSlider.builder(
      itemCount: discs["discs"]!.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        var e = discs["discs"]![(realIndex - 10000) % 12];
        num purp = e["speed"] as num;
        var col = Colors.red[200];
        if (purp > 4) {
          col = Colors.red[300];
        }
        if (purp > 7) {
          col = Colors.red;
        }
        if (purp > 10) {
          col = Colors.red[700];
        }
        if (purp > 12) {
          col = Colors.red[900];
        }
        return Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: col,
            border: Border.all(color: Colors.blueAccent),
          ),
          child: Image.asset(e["frontView"] as String),
        );
      },
      options: CarouselOptions(
        height: 60,
        viewportFraction: 1 / 7,
        initialPage: 0,
        onPageChanged: (index, reason) {
          setState(() {
            _discIndex = index;
          });
        },
        onScrolled: (value) {
          setState(() {
            _discIndex = ((value!.toInt() - 10000) % 12);
          });
        },
      ),
    );
  }
}

class DiscGolfBagPage extends StatefulWidget {
  @override
  _DiscGolfBagPageState createState() => _DiscGolfBagPageState();
}

class Discs {
  String name;
  String type;
  String manufacturer;
  bool isFavorite;

  Discs(this.name, this.type, this.manufacturer, this.isFavorite);
}

class DiscBag {
  String name;
  List<Discs> discs;

  DiscBag(this.name, this.discs);
}

class Course {
  String name;
  DiscBag discBag;

  Course(this.name, this.discBag);
}

List<Discs> _discs = [
  Discs('Aviar', 'Putters', 'Innova', false),
  Discs('Roc', 'Midranges', 'Innova', false),
  Discs('Leopard', 'Fairway Drivers', 'Innova', false),
  Discs('Thunderbird', 'Drivers', 'Innova', false),
  Discs('Destroyer', 'Drivers', 'Innova', false),
];

class _DiscGolfBagPageState extends State<DiscGolfBagPage> {
  List<DiscBag> _discBags = [
    DiscBag('Bag 1', _discs),
    DiscBag('Bag 2', _discs),
  ];

  // ignore: prefer_final_fields
  List<Course> _courses = [
    Course('Course 1', DiscBag('Bag 1', _discs)),
    Course('Course 2', DiscBag('Bag 1', _discs)),
  ];

  DiscBag _selectedBag = DiscBag('Bag 1', []);

  void _addDiscToBag(Discs disc) {
    setState(() {
      _selectedBag.discs.add(disc);
    });
  }

  void _removeDiscFromBag(Discs disc) {
    setState(() {
      _selectedBag.discs.remove(disc);
    });
  }

  void _favoriteDisc(Discs disc) {
    setState(() {
      disc.isFavorite = !disc.isFavorite;
    });
  }

  void _createNewBag(String bagName) {
    setState(() {
      _discBags.add(DiscBag(bagName, []));
    });
  }

  void _deleteBag(DiscBag bag) {
    setState(() {
      _discBags.remove(bag);
    });
  }

  void _assignBagToCourse(DiscBag bag, Course course) {
    setState(() {
      course.discBag = bag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disc Golf Bag'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _addDiscToBag(Discs('New Disc', 'Type', 'Manufacturer', false));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Current Bag:',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 16.0),
                DropdownButton<DiscBag>(
                  value: _selectedBag,
                  onChanged: (DiscBag? newValue) {
                    setState(() {
                      _selectedBag = newValue!;
                    });
                  },
                  items:
                      _discBags.map<DropdownMenuItem<DiscBag>>((DiscBag bag) {
                    return DropdownMenuItem<DiscBag>(
                      value: bag,
                      key: ValueKey(
                          bag.name), // use a key to ensure unique values
                      child: Text(bag.name),
                    );
                  }).toList(),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _selectedBag.discs.length,
                itemBuilder: (BuildContext context, int index) {
                  final disc = _selectedBag.discs[index];
                  return ListTile(
                    title: Text(disc.name),
                    subtitle: Text(disc.type),
                    trailing: IconButton(
                      icon: Icon(
                        disc.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                      onPressed: () {
                        _favoriteDisc(disc);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement adding a new disc to the bag.
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PathExample extends StatefulWidget {
  const PathExample(
      Map<String, List<Map<String, Object>>> discs, int currentIndex,
      {Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _PathExampleState();
}

class _PathExampleState extends State<PathExample> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PathPainter(),
    );
  }
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    // Moves starting point to the center of the screen

    // print(canvas.toString());
    Path path = Path();
    path.moveTo(size.width / 2, 560);
    // path.moveTo(0, 560);

// below is the code to add all the paths to the display
    // for (var element in discs["discs"]!) {
    //   Path path = Path();
    //   path.moveTo(0, 560);
    //   var points = element["path"] as List<Map<String, num>>;
    //   for (var i = 0; i < points.length; i++) {
    //     path.lineTo(-points[i]['x']! * 100, 560 - points[i]['y']! * 1);
    //   }
    //   canvas.drawPath(path, paint);
    // }

//adds the currently selected index to the path
    var destroyer =
        discs["discs"]!.elementAt(_discIndex)["path"] as List<Map<String, num>>;
    for (var i = 0; i < destroyer.length; i++) {
      path.lineTo((size.width / 2) + (-destroyer[i]['x']! * 100),
          560 - destroyer[i]['y']! * 1);
    }
    canvas.drawPath(path, paint);

    //adds the flight path info and disc name to top right
    var name = discs["discs"]!.elementAt(_discIndex)["name"] as String;
    var speed = discs["discs"]!.elementAt(_discIndex)["speed"] as int;
    var glide = discs["discs"]!.elementAt(_discIndex)["glide"] as int;
    var turn = discs["discs"]!.elementAt(_discIndex)["turn"] as int;
    var fade = discs["discs"]!.elementAt(_discIndex)["fade"] as int;

    marks(name.toString(), const Offset(160, 0), canvas, 20.0);
    marks(speed.toString(), const Offset(180, 20), canvas, 20.0);
    marks(glide.toString(), const Offset(180, 40), canvas, 20.0);
    marks(turn.toString(), const Offset(180, 60), canvas, 20.0);
    marks(fade.toString(), const Offset(180, 80), canvas, 20.0);

    // creating grid below
    // y axis
    // canvas.drawLine(Offset(0, 40), Offset(15, 40), paint2);
    // canvas.drawLine(Offset(0, 80), Offset(15, 80), paint2);
    // canvas.drawLine(Offset(0, 120), Offset(15, 120), paint2);
    // canvas.drawLine(Offset(0, 160), Offset(15, 160), paint2);
    // canvas.drawLine(Offset(0, 200), Offset(15, 200), paint2);
    // canvas.drawLine(Offset(0, 240), Offset(15, 240), paint2);
    // canvas.drawLine(Offset(0, 280), Offset(15, 280), paint2);
    // canvas.drawLine(Offset(0, 320), Offset(15, 320), paint2);
    // canvas.drawLine(Offset(0, 360), Offset(15, 360), paint2);
    // canvas.drawLine(Offset(0, 400), Offset(15, 400), paint2);
    // canvas.drawLine(Offset(0, 440), Offset(15, 440), paint2);
    // canvas.drawLine(Offset(0, 480), Offset(15, 480), paint2);
    // canvas.drawLine(Offset(0, 520), Offset(15, 520), paint2);
    // canvas.drawLine(Offset(0, 560), Offset(15, 560), paint2);

    marks('520', const Offset(-182.5, 14.0), canvas, 14.0);
    marks('480', const Offset(-182.5, 60), canvas, 14.0);
    marks('440', const Offset(-182.5, 100), canvas, 14.0);
    marks('400', const Offset(-182.5, 140), canvas, 14.0);
    marks('360', const Offset(-182.5, 180), canvas, 14.0);
    marks('320', const Offset(-182.5, 220), canvas, 14.0);
    marks('280', const Offset(-182.5, 260), canvas, 14.0);
    marks('240', const Offset(-182.5, 300), canvas, 14.0);
    marks('200', const Offset(-182.5, 340), canvas, 14.0);
    marks('160', const Offset(-182.5, 380), canvas, 14.0);
    marks('120', const Offset(-182.5, 420), canvas, 14.0);
    marks('80', const Offset(-182.5, 460), canvas, 14.0);
    marks('40', const Offset(-182.5, 500), canvas, 14.0);
    marks('0', const Offset(-182.5, 540), canvas, 14.0);

    marks('-180', const Offset(-180, 560), canvas, 14.0);
    marks('-140', const Offset(-140, 560), canvas, 14.0);
    marks('-100', const Offset(-100, 560), canvas, 14.0);
    marks('-60', const Offset(-60, 560), canvas, 14.0);
    marks('-20', const Offset(-20, 560), canvas, 14.0);
    marks('20', const Offset(20, 560), canvas, 14.0);
    marks('60', const Offset(60, 560), canvas, 14.0);
    marks('100', const Offset(100, 560), canvas, 14.0);
    marks('140', const Offset(140, 560), canvas, 14.0);
    marks('180', const Offset(180, 560), canvas, 14.0);
    // TextSpan span =
    //     TextSpan(style: TextStyle(color: Colors.grey[600]), text: '100');
    // TextPainter tp = TextPainter(
    //     text: span,
    //     textAlign: TextAlign.left,
    //     textDirection: TextDirection.ltr);
    // tp.layout();
    // tp.paint(canvas, Offset(-205, 180));

    // TextSpan span1 =
    //     TextSpan(style: TextStyle(color: Colors.grey[600]), text: '100');
    // TextPainter tp1 = TextPainter(
    //     text: span,
    //     textAlign: TextAlign.left,
    //     textDirection: TextDirection.ltr);
    // tp1.layout();
    // tp1.paint(canvas, Offset(-205, 145));
    // canvas.drawParagraph(ParagraphBuilder(ParagraphStyle()), offset)
    // var paragraph = ParagraphBuilder(ParagraphStyle(
    //   fontSize: 10,
    //   textAlign: TextAlign.right,
    //   fontStyle: FontStyle.normal,
    //   height: 10,
    //   textDirection: TextDirection.ltr,
    // ));
    // paragraph.addText('560 was the distance here');
    // Paragraph graph = paragraph.build();
    // ParagraphConstraints constraints = ParagraphConstraints(width: 100.0);
    // graph.layout(constraints);
    // canvas.drawParagraph(graph, Offset(180, 560));
    // canvas.drawCircle(Offset(180, 560), 5, paint);
    // x axis
    // canvas.drawLine(Offset(-180, 560), Offset(-180, 560), paint2);
    // canvas.drawLine(Offset(-140, 560), Offset(-140, 560), paint2);
    // canvas.drawLine(Offset(-100, 560), Offset(-100, 560), paint2);
    // canvas.drawLine(Offset(-60, 560), Offset(-60, 560), paint2);
    // canvas.drawLine(Offset(-20, 560), Offset(-20, 560), paint2);
    // canvas.drawLine(Offset(20, 560), Offset(20, 560), paint2);
    // canvas.drawLine(Offset(60, 560), Offset(60, 560), paint2);
    // canvas.drawLine(Offset(100, 560), Offset(100, 560), paint2);
    // canvas.drawLine(Offset(140, 560), Offset(140, 560), paint2);
    // canvas.drawLine(Offset(180, 560), Offset(180, 560), paint2);

    // canvas.drawLine( paint);
    canvas.drawPath(path, paint);
  }

  void marks(number, Offset offset, canvas, fontsize) {
    TextSpan span = TextSpan(
      style: TextStyle(color: Colors.grey[600], fontSize: fontsize),
      text: number,
    );
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: ui.TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, offset.translate(-tp.width / 2, 0));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class RoundsPage extends StatefulWidget {
  @override
  _RoundsPageState createState() => _RoundsPageState();
}

class RoundData {
  final DateTime dateTime;
  final String courseName;
  final List<int> holeScores;
  final String location;

  RoundData({
    required this.dateTime,
    required this.courseName,
    required this.location,
    required this.holeScores,
  });
}

List<RoundData> _rounds = [
  RoundData(
    dateTime: DateTime.now().subtract(Duration(days: 3)),
    courseName: 'Alex Clark',
    location: "Mcinney, Tx",
    holeScores: [2, 2, 2, 1, 3, 3, 4, 4, 4, 2, 2, 2, 2, 2, 4, 4, 4, 4],
  ),
  RoundData(
    dateTime: DateTime.now().subtract(Duration(days: 1)),
    courseName: 'Alex Clark',
    location: "Mcinney, Tx",
    holeScores: [4, 4, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4],
  ),
  RoundData(
    dateTime: DateTime.now(),
    courseName: 'Towne Lake',
    location: "Mcinney, Tx",
    holeScores: [3, 2, 4, 3, 4, 4, 4, 4, 3, 2, 4, 3, 3, 4, 4, 4, 4, 4],
  ),
  RoundData(
    dateTime: DateTime.now(),
    courseName: 'Towne Lake',
    location: "Mcinney, Tx",
    holeScores: [3, 2, 4, 3, 4, 2, 4, 4, 3, 2, 4, 3, 3, 4, 4, 4, 4, 4],
  ),
  RoundData(
    dateTime: DateTime.now(),
    courseName: 'Towne Lake',
    location: "Mcinney, Tx",
    holeScores: [3, 2, 4, 3, 4, 4, 1, 4, 3, 2, 4, 3, 3, 4, 4, 4, 4, 4],
  ),
  RoundData(
    dateTime: DateTime.now(),
    courseName: 'Towne Lake',
    location: "Mcinney, Tx",
    holeScores: [3, 2, 4, 3, 4, 4, 2, 4, 3, 2, 4, 3, 3, 4, 4, 4, 4, 4],
  ),
  RoundData(
    dateTime: DateTime.now(),
    courseName: 'Towne Lake',
    location: "Mcinney, Tx",
    holeScores: [3, 2, 4, 3, 4, 4, 4, 2, 3, 2, 4, 3, 3, 4, 4, 4, 4, 4],
  ),
  RoundData(
    dateTime: DateTime.now(),
    courseName: 'Towne Lake',
    location: "Mcinney, Tx",
    holeScores: [3, 2, 4, 3, 4, 6, 4, 4, 3, 2, 4, 3, 3, 4, 4, 4, 4, 4],
  ),
  RoundData(
    dateTime: DateTime.now(),
    courseName: 'Towne Lake',
    location: "Mcinney, Tx",
    holeScores: [3, 2, 4, 3, 4, 1, 4, 4, 3, 2, 4, 3, 3, 4, 4, 4, 4, 4],
  ),
];

class _RoundsPageState extends State<RoundsPage> {
  List<RoundData> _filteredRounds = [];

  final DateFormat _dateFormat = DateFormat('M/d/yy');
  String _selectedFilter = 'All';

  @override
  void initState() {
    super.initState();
    _filteredRounds = _rounds;
  }

  void _loadRounds() async {
    List<RoundData> rounds = _rounds; //TODO-GRAB FROM DB
    setState(() {
      _rounds = rounds;
    });
  }

  void _addRound(RoundData round) {
    setState(() {
      _rounds.add(round);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rounds'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () => _showFilterDialog(context),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startRound(context),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _filteredRounds.length,
        itemBuilder: (context, index) {
          final round = _filteredRounds[index];
          final List<Widget> scoreButtons = [];
          final double segmentWidth = 15.0;

          for (int i = 0; i < round.holeScores.length; i++) {
            final int score = round.holeScores[i];
            final Color color = _getColorForScore(score);

            scoreButtons.add(
              Container(
                width: segmentWidth,
                height: segmentWidth / 2,
                decoration: BoxDecoration(
                  color: color,
                  border: Border(
                    top: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            );
          }

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    round.courseName,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Score: ${round.holeScores.reduce((a, b) => a + b)}',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        '${_formatDateTime(round.dateTime)}',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        '\u2022',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        round.location,
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: scoreButtons,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    String month = dateTime.month.toString();
    String day = dateTime.day.toString();
    String year = dateTime.year.toString().substring(2);
    if (dateTime.month < 10) {
      month = '$month';
    }
    if (dateTime.day < 10) {
      day = '$day';
    }
    return '$month/$day/$year';
  }

  void _startRound(BuildContext context) async {
    // Show a dialog where the user can select a course
    String? selectedCourse = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select a course'),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Course A');
              },
              child: Text('Course A'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Course B');
              },
              child: Text('Course B'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, 'Course C');
              },
              child: Text('Course C'),
            ),
          ],
        );
      },
    );

    if (selectedCourse != null) {
      // Navigate to the new screen where the user can keep their score
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              ScorePage(courseName: selectedCourse, holeCount: 18),
        ),
      );
    }
  }

  Color _getColorForScore(int score) {
    if (score == 1) {
      return Colors.cyan; // birdie
    } else if (score == 2) {
      return Colors.blue; // birdie
    } else if (score == 3) {
      return Colors.orange; // par
    } else if (score == 4) {
      return Colors.red; // bogey or worse
    } else {
      return Colors.grey; // unknown score
    }
  }

  void _showFilterDialog(BuildContext context) async {
    String? result = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Filter Rounds'),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: const Text('Order by date'),
              onTap: () {
                _orderByDate();
                Navigator.pop(context, 'date');
              },
            ),
            ListTile(
              leading: Icon(Icons.filter_alt),
              title: const Text('Filter by course'),
              onTap: () async {
                String? selectedCourse = await _filterByCourse();
                if (selectedCourse != null) {
                  setState(() {
                    _filteredRounds = _rounds
                        .where((round) => round.courseName == selectedCourse)
                        .toList();
                  });
                }
                Navigator.pop(context, 'course');
              },
            ),
            ListTile(
              leading: Icon(Icons.score),
              title: const Text('Order by best score'),
              onTap: () {
                _orderByBestScore();
                Navigator.pop(context, 'score');
              },
            ),
            ListTile(
              leading: Icon(Icons.refresh),
              title: const Text('Reset Filters'),
              onTap: () {
                _resetFilters();
                Navigator.pop(context, 'reset');
              },
            ),
          ],
        );
      },
    );

    // ...
  }

  void _orderByDate() {
    setState(() {
      _filteredRounds.sort((a, b) => a.dateTime.compareTo(b.dateTime));
    });
  }

  void _resetFilters() {
    setState(() {
      _selectedFilter = 'All';
      _filteredRounds = _rounds;
    });
  }

  Future<String?> _filterByCourse() async {
    List<String> courses =
        _rounds.map((round) => round.courseName).toSet().toList();

    return await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select a course'),
          children: courses.map((course) {
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, course);
              },
              child: Text(course),
            );
          }).toList(),
        );
      },
    );
  }

  void _orderByBestScore() {
    setState(() {
      _filteredRounds.sort((a, b) => a.holeScores
          .reduce((a, b) => a + b)
          .compareTo(b.holeScores.reduce((a, b) => a + b)));
    });
  }
}

class ScorePage extends StatefulWidget {
  final String courseName;
  final int holeCount;

  ScorePage({required this.courseName, required this.holeCount});

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  int _currentHole = 1;
  List<int> _holeScores = [];
  // List<RoundData> _roundsPlayed = [];

  @override
  void initState() {
    super.initState();
    _holeScores = List.generate(widget.holeCount, (index) => 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scorecard - ${widget.courseName}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hole $_currentHole',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Brock',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  'Par: ${_getParForHole(_currentHole)}',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  'Score: ${_holeScores[_currentHole - 1]}',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              shrinkWrap: true,
              children: [
                _buildScoreButton(-2, 'Eagle'),
                _buildScoreButton(-1, 'Birdie'),
                _buildScoreButton(0, 'Manual'),
                _buildScoreButton(1, '1'),
                _buildScoreButton(2, '2'),
                _buildScoreButton(3, '3'),
                _buildScoreButton(4, '4'),
                _buildScoreButton(5, '5'),
                _buildScoreButton(6, '6'),
                _buildScoreButton(7, '7'),
                _buildScoreButton(8, '8'),
                _buildScoreButton(9, '9'),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Text('Previous Hole'),
                  onPressed: () {
                    if (_currentHole > 1) {
                      setState(() {
                        _currentHole--;
                      });
                    }
                  },
                ),
                ElevatedButton(
                  child: Text(_isLastHole() ? 'Finish Round' : 'Next Hole'),
                  onPressed: () {
                    if (_isLastHole()) {
                      _finishRound();
                    } else {
                      setState(() {
                        _currentHole++;
                      });
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  int _getParForHole(int holeNumber) {
    // Replace with code to get par for a hole from database or somewhere else
    return 3; // or any default value
  }

  void _finishRound() {
    // Save round data to database or somewhere else
    RoundData round = RoundData(
      dateTime: DateTime.now(),
      courseName: widget.courseName,
      location: "Mckinney, Tx",
      holeScores: _holeScores,
    );
    // Do something with round data, like adding it to a list of rounds
    _rounds.add(round);
    Navigator.of(context).pop();
  }

  bool _isLastHole() {
    return _currentHole == widget.holeCount;
  }

  Widget _buildScoreButton(int score, String label) {
    return ElevatedButton(
      child: Text(label),
      onPressed: () {
        if (score == 0) {
          _showManualInputDialog(context);
        } else {
          setState(() {
            _holeScores[_currentHole - 1] += score;
          });
        }
      },
    );
  }

  Widget _buildManualInputButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: CircleBorder(),
        padding: EdgeInsets.all(24.0),
      ),
      child: Icon(Icons.edit, size: 36.0),
      onPressed: () {
        _showManualInputDialog(context);
      },
    );
  }

  void _showManualInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String inputValue = '';

        return AlertDialog(
          title: Text('Enter Score'),
          content: TextField(
            autofocus: true,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              inputValue = value;
            },
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                setState(() {
                  _holeScores[_currentHole - 1] = int.parse(inputValue);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildPreviousHoleButton() {
    return ElevatedButton(
      child: Text('Previous Hole'),
      onPressed: () {
        setState(() {
          _currentHole--;
        });
      },
    );
  }
}

// class _ScorePageState extends State<ScorePage> {
//   int _currentHole = 1;
//   List<int> _holeScores = [];

//   @override
//   void initState() {
//     super.initState();
//     _holeScores = List.generate(widget.holeCount, (index) => 0);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${widget.courseName}'),
//         actions: [
//           Text('Brock'),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Hole $_currentHole',
//               style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text(
//                   'Par: ${_getParForHole(_currentHole)}',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 Text(
//                   'Score: ${_holeScores[_currentHole - 1]}',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16.0),
//             GridView.count(
//               crossAxisCount: 3,
//               crossAxisSpacing: 16.0,
//               mainAxisSpacing: 16.0,
//               shrinkWrap: true,
//               children: [
//                 _buildScoreButton(1, '1'),
//                 _buildScoreButton(2, '2'),
//                 _buildScoreButton(3, '3'),
//                 _buildScoreButton(4, '4'),
//                 _buildScoreButton(5, '5'),
//                 _buildScoreButton(6, '6'),
//                 _buildScoreButton(7, '7'),
//                 _buildScoreButton(8, '8'),
//                 _buildScoreButton(9, '9'),
//                 _buildScoreButton(0, 'Manual'),
//                 _buildScoreButton(-1, 'Birdie'),
//                 _buildScoreButton(-2, 'Eagle'),
//               ],
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               child: Text(_isLastHole() ? 'Finish Round' : 'Next Hole'),
//               onPressed: () {
//                 if (_isLastHole()) {
//                   _finishRound();
//                 } else {
//                   setState(() {
//                     _currentHole++;
//                   });
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   int _getParForHole(int holeNumber) {
//     // Replace with code to get par for a hole from database or somewhere else
//     return 3; // or any default value
//   }

//   void _finishRound() {
//     RoundData round = RoundData(
//       dateTime: DateTime.now(),
//       courseName: widget.courseName,
//       location: "Mckinney, Tx",
//       holeScores: _holeScores,
//     );
//     setState(() {
//       _rounds.add(round);
//     });
//     Navigator.of(context).pop();
//   }

//   bool _isLastHole() {
//     return _currentHole == widget.holeCount;
//   }

//   Widget _buildScoreButton(int score, String label) {
//     return ElevatedButton(
//       child: Text(label),
//       onPressed: () {
//         if (score == 0) {
//           _showManualInputDialog(context);
//         } else {
//           setState(() {
//             _holeScores[_currentHole - 1] += score;
//           });
//         }
//       },
//     );
//   }

//   Widget _buildManualInputButton() {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         primary: Colors.red,
//         shape: CircleBorder(),
//         padding: EdgeInsets.all(24.0),
//       ),
//       child: Icon(Icons.edit, size: 36.0),
//       onPressed: () {
//         _showManualInputDialog(context);
//       },
//     );
//   }

//   void _showManualInputDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         String inputValue = '';

//         return AlertDialog(
//           title: Text('Enter Score'),
//           content: TextField(
//             autofocus: true,
//             keyboardType: TextInputType.number,
//             onChanged: (value) {
//               inputValue = value;
//             },
//           ),
//           actions: [
//             TextButton(
//               child: Text('Cancel'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             ElevatedButton(
//               child: Text('Save'),
//               onPressed: () {
//                 setState(() {
//                   _holeScores[_currentHole - 1] = int.parse(inputValue);
//                 });
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// class AccountsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Accounts'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text('User 1'),
//           ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text('User 2'),
//           ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text('User 3'),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ProfilePage extends StatelessWidget {
  final Profile profile;

  ProfilePage({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(profile.profilePicture),
                radius: 75,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              profile.name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Favorite Course: ${profile.favoriteCourse}',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Handicap: ${profile.handicap}',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: profile.discInventory.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.sports_golf),
                  title: Text(
                      '${profile.discInventory[index].brand} ${profile.discInventory[index].name}'),
                  subtitle: Text(
                      'Color: ${profile.discInventory[index].color ?? "Unknown"}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Handle deleting the disc from the inventory
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NewPostPage extends StatefulWidget {
  final Profile userProfile;
  final List<Post> feedPosts;

  NewPostPage({required this.userProfile, required this.feedPosts});

  @override
  _NewPostPageState createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  String _postText = '';
  String? _courseName;
  bool _isSaving = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Post'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Enter post text'),
                onChanged: (value) {
                  _postText = value;
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _courseName,
                items: [
                  DropdownMenuItem(
                    child: Text('Cedar Hill'),
                    value: 'Cedar Hill',
                  ),
                  DropdownMenuItem(
                    child: Text('Turner Park'),
                    value: 'Turner Park',
                  ),
                  DropdownMenuItem(
                    child: Text('Harry Myers'),
                    value: 'Harry Myers',
                  ),
                  DropdownMenuItem(
                    child: Text('Z Boaz'),
                    value: 'Z Boaz',
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _courseName = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Select course (optional)',
                  contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child:
                    _isSaving ? CircularProgressIndicator() : Text('Save Post'),
                onPressed: _isSaving
                    ? null
                    : () async {
                        setState(() {
                          _isSaving = true;
                        });

                        await Future.delayed(Duration(seconds: 2));

                        widget.feedPosts.add(
                          Post(
                            userName: widget.userProfile.name,
                            text: _postText,
                            courseName: _courseName,
                            dateTime: DateTime.now(),
                          ),
                        );

                        setState(() {
                          _isSaving = false;
                        });

                        Navigator.of(context).pop();
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeedPageState extends State<FeedPage> {
  List<Post> _posts = [];

  @override
  void initState() {
    super.initState();
    _posts = widget.feedPosts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disc Golf Social Feed'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(profile: userProfile),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _posts.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPostPage(
                        feedPosts: feedPosts,
                        userProfile: userProfile,
                      ),
                    ),
                  ).then((value) {
                    if (value != null) {
                      setState(() {
                        _posts.add(value);
                      });
                    }
                  });
                },
                child: Text('New Post'),
              ),
            );
          }
          index -= 1;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${_posts[index].userName} - ${_formatDateTime(_posts[index].dateTime)}',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  _posts[index].text,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                if (_posts[index].courseName != null)
                  Text(
                    'Course: ${_posts[index].courseName}',
                    style: TextStyle(fontSize: 16.0),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    final DateFormat formatter = DateFormat('MMMM dd, yyyy - h:mm a');
    return formatter.format(dateTime);
  }
}

class FeedPage extends StatefulWidget {
  final Profile userProfile;
  final List<Post> feedPosts;

  FeedPage({required this.userProfile, required this.feedPosts});

  @override
  _FeedPageState createState() => _FeedPageState();
}
