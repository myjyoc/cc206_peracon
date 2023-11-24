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
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu, color: Color(0xFF215757), size: 25.0),
                onPressed: () {
                  // Handle menu button press
                },
              ),
              Expanded(
                child: Center(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'New Chat',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              color: Color(0xFF818181),
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Icon(Icons.add, color: Color(0xFF818181), size: 15.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Color(0xFF215757),
                  child: Icon(Icons.person, color: Colors.white, size: 24.0),
                ),
                onPressed: () {
                  // Handle profile button press
                },
              ),
            ],
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
              icon: Icon(Icons.home, size: 24.0),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book, size: 24.0),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer, size: 24.0),
              label: 'Ask',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics, size: 24.0),
              label: 'Analytics',
            ),
          ],
          selectedItemColor: Color(0xFF215757),
          unselectedItemColor: Colors.grey,
          currentIndex: 2,
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.pushReplacementNamed(context, '/home');
                break;
              case 1:
                Navigator.pushReplacementNamed(context, '/learn');
                break;
              case 2:
                
                break;
              case 3:
                Navigator.pushReplacementNamed(context, '/analytics');
                break;
            }
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
                hintStyle: TextStyle(fontWeight: FontWeight.w600,
            fontFamily: 'Nunito',),
                contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color:Color(0xFF215757)),
            
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
        style: TextStyle(fontSize: 20.0, color: Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.w600,),
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
