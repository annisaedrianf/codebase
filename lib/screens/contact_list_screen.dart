import 'package:flutter/material.dart';

import '../models/contact.dart';
import 'view.dart';
import 'contact_list_viewmodel.dart';

class ContactListScreen extends StatelessWidget {
  final ContactViewmodel _contactViewmodel = ContactViewmodel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),
      body: View(
        viewmodel: _contactViewmodel,
        builder: (_context, viewmodel, _child) {
          final ContactViewmodel _viewmodel = viewmodel;

          return ListView.builder(
            itemCount: _viewmodel.itemCount,
            itemBuilder: (context, index) {
              final Contact _contact = _viewmodel.getContactByIndex(index);

              return Card(
                child: ListTile(
                  title: Text(_contact.name),
                  leading: CircleAvatar(
                    backgroundImage: _contact.photo != null
                        ? NetworkImage(_contact.photo)
                        : null,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
