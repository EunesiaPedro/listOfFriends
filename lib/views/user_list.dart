import 'package:flutter/material.dart';
import 'package:listoffriends/componets/user_tile.dart';
import 'package:listoffriends/data/friends.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = {...listOfFriends};

    return Scaffold(
      appBar: AppBar(
        title: Text("List Of Friends"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.navigation),
        
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
