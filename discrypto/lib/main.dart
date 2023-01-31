// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../my_flutter_app_icons.dart' as bagIcon;
import '../disc.dart' as discIcon;

void main() => runApp(MyApp());
Map<String, List<Map<String, Object>>> discs = {
  "discs": [
    {
      "name": "avair",
      "type": "Putter",
      "speed": 5,
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
      "name": "h2",
      "type": "Driver",
      "speed": 11,
      "glide": 5,
      "turn": 0,
      "fade": 2.5,
      "frontView": "assets/discs/h2.png",
      "sideView": "assets/discs/sv_h2.png",
      "path": [
        {"x": 0, "y": 0},
        {"x": -0.001, "y": 37.612},
        {"x": -0.005, "y": 72.031},
        {"x": -0.01, "y": 103.588},
        {"x": -0.016, "y": 132.604},
        {"x": -0.021, "y": 159.381},
        {"x": -0.025, "y": 184.211},
        {"x": -0.024, "y": 207.368},
        {"x": -0.017, "y": 229.115},
        {"x": 0.001, "y": 249.7},
        {"x": 0.032, "y": 269.355},
        {"x": 0.081, "y": 288.301},
        {"x": 0.151, "y": 306.741},
        {"x": 0.248, "y": 324.868},
        {"x": 0.377, "y": 342.857},
        {"x": 0.543, "y": 360.871},
        {"x": 0.753, "y": 379.059}
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
var _currentIndex = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(discIcon.Disc.download),
                label: 'Flights',
              ),
              BottomNavigationBarItem(
                icon: Icon(bagIcon.MyFlutterApp.disc_golf_bag),
                label: 'Bag',
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                children: [
                  Expanded(child: PathExample(discs, _currentIndex)),
                  Spacer(),
                  // Text("Innova Destroyer"),
                  Image.asset(discs["discs"]!
                      .elementAt(_currentIndex)["sideView"]
                      .toString()),
                  // getTextWidgets(flightNumbers),
                  Icon(Icons.arrow_drop_down_outlined),
                  buildCarousel()
                ],
              ),
            ),
          )),
    );
  }

  CarouselSlider buildCarousel() {
    return CarouselSlider(
      items: discs["discs"]!.map((e) {
        return Builder(
          builder: (BuildContext context) {
            num purp = e["speed"] as num;
            // num test = purp ?? 0;
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
                    color: col, border: Border.all(color: Colors.blueAccent)),
                child: Image.asset(e["frontView"] as String));
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 60,
        viewportFraction: 1 / 7,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index; //<-- Page index
          });
        },
        onScrolled: (value) => _currentIndex = value as int,
      ),
    );
  }

  Row getTextWidgets(List<String> strings) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.max,
        // crossAxisAlignment: CrossAxisAlignmen,
        children: strings
            .map((item) => Text(
                  item,
                  style: TextStyle(fontSize: 25),
                ))
            .toList());
  }

  List<Container> frontViews() {
    /// Method 1
    List<Map<String, Object>>? frontViews = discs["discs"];
    List<Container> paths = [];
    frontViews?.forEach((element) {
      // Map<String, Object>? purple = element["numbers"] as Map<String, Object>;
      num purp = element["speed"] as num;
      // num test = purp ?? 0;
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
      paths.add(Container(
          width: 60,
          decoration: BoxDecoration(
              color: col, border: Border.all(color: Colors.blueAccent)),
          child: Image.asset(element["frontView"] as String)));
    });
    return paths;
    // discs["discs"].forEach((element) {
    //    frontViews.add(Container(
    //      width: 70,
    //               color: Colors.purple[500],
    //               child: Image.asset(
    //                 element
    //               )
    //   ));
    // })
//    for (String name in list) {
//      childrenTexts.add(new Text(name, style: new TextStyle(color: Colors.red),));
//    }
//    return childrenTexts;
// discs[discs].forEach((element) { })

    // for (var entry in discs["discs"].) {
    //   frontViews.add(Container(
    //      width: 70,
    //               color: Colors.purple[500],
    //               child: Image.asset(
    //                 entry['frontView']
    //               )
    //   ));
  }

  @override
  State<MyApp> createState() => _PathExampleState();
  void setState(Null Function() param0) {}
}

class PathExample extends StatefulWidget {
  const PathExample(
      Map<String, List<Map<String, Object>>> discs, int currentIndex,
      {Key? key})
      : super(key: key);

  @override
  _PathExampleState createState() => _PathExampleState();
}

class _PathExampleState extends State<MyApp> {
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
    path.moveTo(-300, -300);
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
    var destroyer = discs["discs"]!.elementAt(_currentIndex)["path"]
        as List<Map<String, num>>;
    for (var i = 0; i < destroyer.length; i++) {
      path.lineTo(-destroyer[i]['x']! * 100, 560 - destroyer[i]['y']! * 1);
    }
    canvas.drawPath(path, paint);

    //adds the flight path info and disc name to top right
    var name = discs["discs"]!.elementAt(_currentIndex)["name"] as String;
    var speed = discs["discs"]!.elementAt(_currentIndex)["speed"] as int;
    var glide = discs["discs"]!.elementAt(_currentIndex)["glide"] as int;
    var turn = discs["discs"]!.elementAt(_currentIndex)["turn"] as int;
    var fade = discs["discs"]!.elementAt(_currentIndex)["fade"] as int;

    marks(name.toString(), Offset(0, 0), canvas, 40.0);
    marks(speed.toString(), Offset(160, 20), canvas, 40.0);
    marks(glide.toString(), Offset(160, 60), canvas, 40.0);
    marks(turn.toString(), Offset(160, 100), canvas, 40.0);
    marks(fade.toString(), Offset(160, 140), canvas, 40.0);

    Paint paint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    // creating grid below
    // y axis
    canvas.drawLine(Offset(-205, 40), Offset(-180, 40), paint2);
    canvas.drawLine(Offset(-205, 80), Offset(-180, 80), paint2);
    canvas.drawLine(Offset(-205, 120), Offset(-180, 120), paint2);
    canvas.drawLine(Offset(-205, 160), Offset(-180, 160), paint2);
    canvas.drawLine(Offset(-205, 200), Offset(-180, 200), paint2);
    canvas.drawLine(Offset(-205, 240), Offset(-180, 240), paint2);
    canvas.drawLine(Offset(-205, 280), Offset(-180, 280), paint2);
    canvas.drawLine(Offset(-205, 320), Offset(-180, 320), paint2);
    canvas.drawLine(Offset(-205, 360), Offset(-180, 360), paint2);
    canvas.drawLine(Offset(-205, 400), Offset(-180, 400), paint2);
    canvas.drawLine(Offset(-205, 440), Offset(-180, 440), paint2);
    canvas.drawLine(Offset(-205, 480), Offset(-180, 480), paint2);
    canvas.drawLine(Offset(-205, 520), Offset(-180, 520), paint2);
    canvas.drawLine(Offset(-205, 560), Offset(-180, 560), paint2);

    marks('520', Offset(-192.5, 14.0), canvas, 14.0);
    marks('480', Offset(-192.5, 60), canvas, 14.0);
    marks('440', Offset(-192.5, 100), canvas, 14.0);
    marks('400', Offset(-192.5, 140), canvas, 14.0);
    marks('360', Offset(-192.5, 180), canvas, 14.0);
    marks('320', Offset(-192.5, 220), canvas, 14.0);
    marks('280', Offset(-192.5, 260), canvas, 14.0);
    marks('240', Offset(-192.5, 300), canvas, 14.0);
    marks('200', Offset(-192.5, 340), canvas, 14.0);
    marks('160', Offset(-192.55, 380), canvas, 14.0);
    marks('120', Offset(-192.5, 420), canvas, 14.0);
    marks('80', Offset(-192.5, 460), canvas, 14.0);
    marks('40', Offset(-192.5, 500), canvas, 14.0);
    marks('0', Offset(-192.5, 540), canvas, 14.0);

    marks('-180', Offset(-180, 585), canvas, 14.0);
    marks('-140', Offset(-140, 585), canvas, 14.0);
    marks('-100', Offset(-100, 585), canvas, 14.0);
    marks('-60', Offset(-60, 585), canvas, 14.0);
    marks('-20', Offset(-20, 585), canvas, 14.0);
    marks('20', Offset(20, 585), canvas, 14.0);
    marks('60', Offset(60, 585), canvas, 14.0);
    marks('100', Offset(100, 585), canvas, 14.0);
    marks('140', Offset(140, 585), canvas, 14.0);
    marks('180', Offset(180, 585), canvas, 14.0);
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
    // canvas.drawParagraph(graph, Offset(180, 585));
    // canvas.drawCircle(Offset(180, 585), 5, paint);
    // x axis
    canvas.drawLine(Offset(-180, 585), Offset(-180, 560), paint2);
    canvas.drawLine(Offset(-140, 585), Offset(-140, 560), paint2);
    canvas.drawLine(Offset(-100, 585), Offset(-100, 560), paint2);
    canvas.drawLine(Offset(-60, 585), Offset(-60, 560), paint2);
    canvas.drawLine(Offset(-20, 585), Offset(-20, 560), paint2);
    canvas.drawLine(Offset(20, 585), Offset(20, 560), paint2);
    canvas.drawLine(Offset(60, 585), Offset(60, 560), paint2);
    canvas.drawLine(Offset(100, 585), Offset(100, 560), paint2);
    canvas.drawLine(Offset(140, 585), Offset(140, 560), paint2);
    canvas.drawLine(Offset(180, 585), Offset(180, 560), paint2);

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
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, offset.translate(-tp.width / 2, 0));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
