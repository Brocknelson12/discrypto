import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum PostType { scorecard, lostDisc }

class Post {
  final String userName;
  final PostType postType;
  final DateTime dateTime;
  final String text;
  final String? courseName;
  final int? holeNumber;
  final List<int>? holeScores;
  final String? discName;
  final String? discColor;

  Post({
    required this.userName,
    required this.postType,
    required this.dateTime,
    required this.text,
    this.courseName,
    this.holeNumber,
    this.holeScores,
    this.discName,
    this.discColor,
  });
}

class UserProfile {
  final String userName;
  final String name;
  final String profileImageUrl;
  final List<String> followedUsers;
  final String favoriteDisc;
  final String favoriteCourse;
  final List<Course> playedCourses;

  UserProfile({
    required this.userName,
    required this.name,
    required this.profileImageUrl,
    required this.followedUsers,
    required this.favoriteDisc,
    required this.favoriteCourse,
    required this.playedCourses,
  });
}

class Course {
  final String courseName;
  final int score;

  Course({
    required this.courseName,
    required this.score,
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

// Example Post for a scorecard
Post scorecardPost = Post(
  userName: 'john_doe',
  postType: PostType.scorecard,
  dateTime: DateTime.now(),
  text: 'Played a great round today!',
  courseName: 'Pine Valley Golf Club',
  holeScores: [3, 4, 3, 5, 4, 3, 4, 5, 3],
);

// Example Post for a lost disc
Post lostDiscPost = Post(
  userName: 'jane_doe',
  postType: PostType.lostDisc,
  dateTime: DateTime.now(),
  text: 'Lost my favorite disc today.',
  courseName: 'Augusta National Golf Club',
  holeNumber: 7,
  discName: 'Innova Destroyer',
  discColor: 'Blue',
);

// Example UserProfile
UserProfile userProfile = UserProfile(
  userName: 'john_doe',
  name: 'John Doe',
  profileImageUrl: 'assets/images/john_doe.jpg',
  followedUsers: ['jane_doe', 'mike_smith'],
  favoriteDisc: 'Innova Leopard3',
  favoriteCourse: 'Pebble Beach Golf Links',
  playedCourses: [
    Course(courseName: 'Pine Valley Golf Club', score: 85),
    Course(courseName: 'Pebble Beach Golf Links', score: 90),
  ],
);

// Example Course
Course exampleCourse = Course(
  courseName: 'Cypress Point Club',
  score: 95,
);

List<Post> feedPosts = [
  // ...
  Post(
    userName: 'JohnDoe',
    dateTime: DateTime.now(),
    text: 'Lost a yellow disc on hole 5',
    postType: PostType.lostDisc,
    courseName: 'Course A',
    holeNumber: 5,
    discColor: 'yellow',
  ),
  Post(
    userName: 'JaneDoe',
    dateTime: DateTime.now(),
    text: 'My scorecard for today',
    postType: PostType.scorecard,
    courseName: 'Course B',
    holeScores: [2, 3, 4, 5, 3, 4, 5, 2, 3, 3, 2, 3, 4, 3, 2, 2, 1, 2],
  ),
  // ...
];

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  // Your sample data and other methods go here
  // ...

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage("your_profile_image_asset_here"),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProfilePage(userProfile: userProfile)),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: feedPosts.length,
        itemBuilder: (context, index) {
          final post = feedPosts[index];
          final profile = getProfileByUsername(post.userName!);
          final dateFormatter = DateFormat('M/d/yy h:mm a');

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("avair.png"),
                      ),
                      SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProfilePage(userProfile: profile),
                                ),
                              );
                            },
                            child: Text(
                              profile.name,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            dateFormatter.format(post.dateTime!),
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    post.text,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  if (post.courseName != null) ...[
                    SizedBox(height: 12.0),
                    Text(
                      post.courseName!,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                  if (post.hole != null) ...[
                    SizedBox(height: 12.0),
                    Text(
                      'Hole: ${post.hole}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                  if (post.holeScores != null) ...[
                    SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: post.holeScores!
                          .map((score) => _buildScoreSegment(score))
                          .toList(),
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "Posts"),
            Tab(text: "Profiles"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
// Implement the search functionality for posts
          Center(child: Text("Search Posts")),
// Implement the search functionality for profiles
          Center(child: Text("Search Profiles")),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
}

class ProfilePage extends StatefulWidget {
  final UserProfile userProfile;

  ProfilePage({required this.userProfile});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? favoriteDisc;
  String? favoriteCourse;

  @override
  void initState() {
    super.initState();
    favoriteDisc = widget.userProfile.favoriteDisc;
    favoriteCourse = widget.userProfile.favoriteCourse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.userProfile.name}'s Profile"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
// Display the best score, favorite disc, favorite course
          Text(
            "Best Score: ${widget.userProfile.bestScore}",
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 16.0),
          Text(
            "Favorite Disc: $favoriteDisc",
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 16.0),
          Text(
            "Favorite Course: $favoriteCourse",
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 16.0),
// Edit options
          if (widget.userProfile.isCurrentUser) ...[
            ElevatedButton(
              onPressed: () {
// Implement edit functionality here
              },
              child: Text("Edit Favorites"),
            ),
          ],
        ],
      ),
    );
  }
}

class CreatePostPage extends StatefulWidget {
  final PostType postType;

  CreatePostPage({required this.postType});

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  // TODO: Implement the UI for the form based on the selected post type

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
      ),
      body: _buildForm(),
    );
  }

  Widget _buildForm() {
    if (widget.postType == PostType.lostDisc) {
      // TODO: Implement the lost disc form
      return Text('Lost Disc Form');
    } else if (widget.postType == PostType.scorecard) {
      // TODO: Implement the scorecard form
      return Text('Scorecard Form');
    } else {
      return Text('Invalid Post Type');
    }
  }
}
