import 'package:crud/components/user_tile.dart';
import 'package:crud/data/dummy_users.dart';
import 'package:crud/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  const UserList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Usuários'),actions: [IconButton(onPressed:(){}, icon: Icon(Icons.add))],),
      body: ListView.builder( itemBuilder: (ctx, i) => UserTile(users.byIndex(i),), itemCount: users.count,),
    );
  }
}