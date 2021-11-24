import 'package:crud/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile(this.user);
  final User user;
  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty ? CircleAvatar(child: Icon(Icons.person),) : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl),);
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: (){},
              color: Colors.orange,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: (){},
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}