import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            "More Page Content",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.assignment),
                  title: const Text("Online Exam"),
                  onTap: () {
                    // Navigate to Online Exam Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OnlineExamPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.flash_on),
                  title: const Text("Flashcards"),
                  onTap: () {
                    // Navigate to Flashcards Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FlashcardsPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.question_answer),
                  title: const Text("Exam Question Bank"),
                  onTap: () {
                    // Show options for Exam Question Bank
                    _showExamOptions(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text("Dictionary"),
                  onTap: () {
                    // Navigate to Dictionary Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DictionaryPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.library_books),
                  title: const Text("English Books"),
                  onTap: () {
                    // Navigate to English Books Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EnglishBooksPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showExamOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select Exam Level"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text("Primary School"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PrimarySchoolPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("SPM"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SPMPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("STPM"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const STPMPage()),
                  );
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }
}

// Placeholder pages for navigation
class OnlineExamPage extends StatelessWidget {
  const OnlineExamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Online Exam")),
      body: const Center(child: Text("Online Exam Content")),
    );
  }
}

class FlashcardsPage extends StatelessWidget {
  const FlashcardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flashcards")),
      body: const Center(child: Text("Flashcards Content")),
    );
  }
}

class ExamQuestionBankPage extends StatelessWidget {
  const ExamQuestionBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exam Question Bank")),
      body: const Center(child: Text("Exam Question Bank Content")),
    );
  }
}

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dictionary")),
      body: const Center(child: Text("Dictionary Content")),
    );
  }
}

class EnglishBooksPage extends StatelessWidget {
  const EnglishBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("English Books")),
      body: const Center(child: Text("English Books Content")),
    );
  }
}

// Placeholder pages for exam levels
class PrimarySchoolPage extends StatelessWidget {
  const PrimarySchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Primary School Exam Questions")),
      body: const Center(child: Text("Primary School Exam Questions Content")),
    );
  }
}

class SPMPage extends StatelessWidget {
  const SPMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SPM Exam Questions")),
      body: const Center(child: Text("SPM Exam Questions Content")),
    );
  }
}

class STPMPage extends StatelessWidget {
  const STPMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("STPM Exam Questions")),
      body: const Center(child: Text("STPM Exam Questions Content")),
    );
  }
}
