import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Card(
            child: Text('hello world'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/AddNewContact");
        },
        tooltip: 'Add new Contact',
        child: const Icon(Icons.add),
      ),
    );
  }
}
