import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  _DictionaryPageState createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  final TextEditingController _controller = TextEditingController();
  String _definition = '';

  Future<void> fetchDefinition(String word) async {
    final url = Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$word');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _definition = data[0]['meanings'][0]['definitions'][0]['definition'];
      });
    } else {
      setState(() {
        _definition = 'Definition not found.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary API'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter a word',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                fetchDefinition(_controller.text.trim());
              },
              child: const Text('Get Definition'),
            ),
            const SizedBox(height: 20),
            Text(
              _definition,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
