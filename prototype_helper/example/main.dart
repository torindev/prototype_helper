import 'package:flutter/material.dart';
import 'package:prototype_helper/prototype_helper.dart';

class User {
  final String id;
  final String index;
  final String firstName;
  final String lastName;
  final String photoSmall;
  final String photoBig;
  final String post;

  User({
    @required this.id,
    @required this.index,
    @required this.firstName,
    @required this.lastName,
    @required this.photoSmall,
    @required this.photoBig,
    @required this.post,
  });

  static List<User> getList() {
    List<User> results = [];
    for (int i = 0; i < femalePhotosSmallList.length; i++) {
      results.add(User(
          id: DateTime.now().toIso8601String(),
          index: 'female[$i]',
          firstName: femaleNamesList[i],
          lastName: randomSurname,
          photoSmall: femalePhotosSmallList[i],
          photoBig: femalePhotosBigList[i],
          post: randomLoremIpsumParagraph));
    }

    for (int i = 0; i < malePhotosSmallList.length; i++) {
      results.add(User(
          id: DateTime.now().toIso8601String(),
          index: 'male[$i]',
          firstName: maleNamesList[i],
          lastName: randomSurname,
          photoSmall: malePhotosSmallList[i],
          photoBig: malePhotosBigList[i],
          post: randomLoremIpsumParagraph));
    }

    return results;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ListScreen.routeName,
      routes: {
        ListScreen.routeName: (ctx) => ListScreen(),
        DetailScreen.routeName: (ctx) => DetailScreen(),
      },
    );
  }
}

class ListScreen extends StatelessWidget {
  static const routeName = '/list-screen';

  static Future<Object> startScreen(BuildContext context) {
    return Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    final users = User.getList();
    return Scaffold(
      appBar: AppBar(
        title: Text('List of users'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          User user = users[index];
          return GestureDetector(
            onTap: () {
              DetailScreen.startScreen(context, user);
            },
            child: ListTile(
              leading: Container(
                width: 64,
                height: 64,
                child: Image.network(
                  user.photoSmall,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text('${user.index}: ${user.firstName} ${user.lastName}'),
              subtitle: Text(
                user.post,
                maxLines: 3,
              ),
            ),
          );
        },
        itemCount: users.length,
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail-screen';

  static Future<Object> startScreen(BuildContext context, User user) {
    return Navigator.of(context).pushNamed(routeName, arguments: user);
  }

  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('${user.firstName} ${user.lastName}'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            color: Colors.lightBlue.withOpacity(0.5),
            height: 300,
            child: Stack(
              children: <Widget>[
                Center(
                  child: CircularProgressIndicator(),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.network(
                    user.photoBig,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            user.index,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(user.post),
        ],
      ),
    );
  }
}
