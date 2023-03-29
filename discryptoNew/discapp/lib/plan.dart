import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

class PlanPage extends StatefulWidget {
  @override
  _PlanPageState createState() => _PlanPageState();
}

class Discs {
  String name = '';
  String type = '';
  String manufacturer = '';
  bool isFavorite = false;
  Color discColor;

  Discs(
      {required this.name,
      required this.type,
      required this.manufacturer,
      required this.isFavorite,
      required this.discColor});
}

class _PlanPageState extends State<PlanPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.landscapeRight,
  //   ]);
  // }

  // @override
  // void dispose() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //     DeviceOrientation.portraitDown,
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.landscapeRight,
  //   ]);
  //   super.dispose();
  // }

  String _selectedCourse = '';
  List<String> _courseList = [
    'Pine Valley Golf Club',
    'Pebble Beach Golf Links',
    'Augusta National Golf Club',
  ];
  String _currentDiscName = '';
  Color _currentDiscColor = Colors.transparent;
  List<Map<String, dynamic>> _selectedDiscs = [];
  int _selectedHole = -1;
  bool _showDiscSelector = false;

  void _initializeSelectedDiscs(int holeCount) {
    setState(() {
      _selectedDiscs = List.generate(
          holeCount, (index) => {'name': '', 'color': Colors.transparent});
    });
  }

  CarouselController _carouselController = CarouselController();
  List<Discs> _discList = [
    Discs(
        name: 'Aviar',
        type: 'Putters',
        manufacturer: 'Innova',
        isFavorite: false,
        discColor: Colors.red),
    Discs(
        name: 'Roc',
        type: 'Midranges',
        manufacturer: 'Innova',
        isFavorite: false,
        discColor: Colors.green),
    Discs(
        name: 'Buzz',
        type: 'Midranges',
        manufacturer: 'Innova',
        isFavorite: false,
        discColor: Colors.black),
    Discs(
        name: 'Destroyer',
        type: 'Midranges',
        manufacturer: 'Innova',
        isFavorite: false,
        discColor: Colors.orange),
    Discs(
        name: 'Rive',
        type: 'Midranges',
        manufacturer: 'Innova',
        isFavorite: false,
        discColor: Colors.purple),
    Discs(
        name: 'Destroyer',
        type: 'Midranges',
        manufacturer: 'Innova',
        isFavorite: false,
        discColor: Colors.pink),
    // Add more disc instances here
  ];

  void _handleCourseSelection(String? course) {
    if (course == null) return;

    setState(() {
      _selectedCourse = course;
      _selectedDiscs = List.filled(
          18, {'name': '', 'color': Colors.transparent},
          growable: true);
      _showDiscSelector = false;
    });
  }

  void _handleHoleSelection(int holeIndex) {
    setState(() {
      _selectedHole = holeIndex;
      _showDiscSelector = true;
    });
  }

  void _handleDiscSelection(String discName, Color discColor) {
    setState(() {
      _currentDiscName = discName;
      _currentDiscColor = discColor;
      _selectedDiscs[_selectedHole] = {
        'name': _currentDiscName,
        'color': _currentDiscColor
      };
      _selectedHole = -1;
      _showDiscSelector = false;
    });
  }

  Widget _buildCarouselSlider() {
    return CarouselSlider.builder(
      itemCount: _discList.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        final disc = _discList[index];
        return GestureDetector(
          onTap: () => _handleDiscSelection(disc.name, disc.discColor),
          child: Container(
            width: 40.0,
            margin: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 0.2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: disc.discColor,
            ),
            child: Center(
              child: RotatedBox(
                quarterTurns:
                    1, // Change this to -1 if you prefer text from top to bottom
                child: Text(
                  disc.name,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
      },
      carouselController: _carouselController,
      options: CarouselOptions(
        // enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.15,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan Your Round'),
      ),
      body: Column(
        children: [
          DropdownButton<String>(
            value: _selectedCourse.isEmpty ? null : _selectedCourse,
            hint: Text('Select a course'),
            items: _courseList.map<DropdownMenuItem<String>>((String course) {
              return DropdownMenuItem<String>(
                value: course,
                child: Text(course),
              );
            }).toList(),
            onChanged: _handleCourseSelection,
          ),
          if (_selectedCourse.isNotEmpty)
            Expanded(
              child: GridView.builder(
                itemCount: _selectedDiscs.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => _handleHoleSelection(index),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Text(
                              'Hole ${index + 1}',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: _selectedDiscs[index]['color'],
                              ),
                              child: Center(
                                child: Text(
                                  _selectedDiscs[index]['name'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
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
            ),
          if (_showDiscSelector)
            Expanded(
              child: Column(
                children: [
                  Text('Select a disc'),
                  _buildCarouselSlider(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
