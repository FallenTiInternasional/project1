import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter User Profile',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserProfile(),
    );
  }
}

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool _isDarkMode = false;

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        'Profile',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ))),
      body: ListView(
        children: <Widget>[
          _buildUserInfo(),
          _buildSettings(),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'data:image/jpeg;base64,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'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Nizham Pramudya',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Mahasiswa',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.assignment_ind_outlined,
                    color: Colors.grey,
                    size: 15,
                  ),
                  title: Text(
                    '201110244',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email, color: Colors.grey),
                  title: Text(
                    'Pramudyanhp@gmail.com',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.grey),
                  title: Text(
                    'Nizham',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.grey),
                  title: Text(
                    'Samarinda',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone, color: Colors.grey),
                  title: Text(
                    '083156778912',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettings() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: _isDarkMode,
              onChanged: _toggleDarkMode,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Navigate to settings screen
            },
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              // Perform logout action
            },
          ),
        ],
      ),
    );
  }
}
