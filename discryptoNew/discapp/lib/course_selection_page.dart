import 'package:flutter/material.dart';

class CourseSelectionPage extends StatefulWidget {
  @override
  _CourseSelectionPageState createState() => _CourseSelectionPageState();
}

class _CourseSelectionPageState extends State<CourseSelectionPage> {
  List<String> _courseList = [
    'Course 1',
    'Course 2',
    'Course 3',
    // Add more course names here
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Select Course'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'List'),
              Tab(icon: Icon(Icons.map), text: 'Map'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildCourseListView(),
            _buildCourseMapView(),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseListView() {
    return ListView.builder(
      itemCount: _courseList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(_courseList[index]),
          onTap: () {
            // Navigate to the selected course detail page
          },
        );
      },
    );
  }

  Widget _buildCourseMapView() {
    return Center(
      child: Text('Map view not implemented yet'),
    );
  }
}
