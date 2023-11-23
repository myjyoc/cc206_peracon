import 'package:flutter/material.dart';

class AskPage extends StatefulWidget {
  const AskPage({Key? key}) : super(key: key);

  @override
  _AskPageState createState() => _AskPageState();
}

class _AskPageState extends State<AskPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _chatMessages = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0, // Remove app bar shadow
            leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                // Handle menu button press
              },
            ),
            actions: [
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                onPressed: () {
                  // Handle profile button press
                },
              ),
            ],
            title: Center(
              child: InkWell(
                onTap: () {
                  // Handle "New Chat" tap
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
                    children: [
                      Text(
                        'New Chat',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Icon(Icons.add, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 10.0),
            _buildSuggestedQuestions(),
            Expanded(
              child: ListView.builder(
                itemCount: _chatMessages.length,
                itemBuilder: (context, index) {
                  return _buildChatMessage(_chatMessages[index]);
                },
              ),
            ),
            _buildMessageBox(),
            SizedBox(height: 10.0),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              label: 'Ask',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Analytics',
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: 2,
          onTap: (int index) {
            // Handle navigation to different tabs
          },
        ),
      ),
    );
  }

  Widget _buildChatMessage(String message) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.blue,
        ),
        padding: const EdgeInsets.all(16.0),
        child: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildMessageBox() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(color: Color(0xFF215757)),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              onChanged: (value) {
                // Handle onChanged
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Ask a question..',
                contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              _sendMessage();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestedQuestions() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildSuggestedQuestion('How can I save money on groceries?'),
          SizedBox(height: 10.0),
          _buildSuggestedQuestion('Tell me about credit scores.'),
          SizedBox(height: 10.0),
          _buildSuggestedQuestion('What are the best investment options for beginners?'),
          SizedBox(height: 10.0),
          _buildSuggestedQuestion('How to create a budget for my expenses?'),
        ],
      ),
    );
  }

  Widget _buildSuggestedQuestion(String question) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF215757),
      ),
      child: Text(
        question,
        style: TextStyle(fontSize: 25.0, color: Colors.white),
      ),
    );
  }

  void _sendMessage() {
    String message = _messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        _chatMessages.add(message);
        _messageController.clear();
      });
    }
  }
}

void main() {
  runApp(AskPage());
}
