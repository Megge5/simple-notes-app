import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

void main() {
  runApp(SimpleNotesApp());
}

class SimpleNotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Notes',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: NotesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List<Map<String, String>> notes = [];

  @override
  void initState() {
    super.initState();
    loadNotes();
  }

  Future<void> loadNotes() async {
    final prefs = await SharedPreferences.getInstance();
    final String? notesString = prefs.getString('notes');
    if (notesString != null) {
      setState(() {
        notes = List<Map<String, String>>.from(json.decode(notesString));
      });
    }
  }

  Future<void> saveNotes() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('notes', json.encode(notes));
  }

  void addNote(String title, String content) {
    setState(() {
      notes.add({'title': title, 'content': content});
    });
    saveNotes();
  }

  void deleteNote(int index) {
    setState(() {
      notes.removeAt(index);
    });
    saveNotes();
  }

  void showAddNoteDialog() {
    String title = '';
    String content = '';
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Add Note'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (value) => title = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Content'),
              onChanged: (value) => content = value,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (title.isNotEmpty || content.isNotEmpty) {
                addNote(title, content);
              }
              Navigator.pop(context);
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 195, 247),
      appBar: AppBar(title: Text('My Notes')),
      body: notes.isEmpty
          ? Center(child: Text('No notes yet!'))
          : ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(notes[index]['title'] ?? ''),
                subtitle: Text(notes[index]['content'] ?? ''),
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () => deleteNote(index),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAddNoteDialog,
        child: Icon(Icons.add),
      ),
    );
  }
}