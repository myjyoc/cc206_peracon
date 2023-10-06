import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            suffixIcon: Icon(Icons.search),
          ),
          onChanged: (value) {
            // Perform search here
          },
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(Icons.person, color: Colors.white),
            ),
            onPressed: () {
              // profile action here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Headline News Section
          Container(
            margin: EdgeInsets.all(16.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  'https://media.philstar.com/photos/2023/10/05/sara-nationalistic_2023-10-05_16-19-32.jpg',
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Text(
                    'Sara says critics of confidential fund are enemies of the nation for obstructing peace',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Category Buttons Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Category 1'),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Category 2'),
                ),
              ),
            ],
          ),

          // Other News Section
          Column(
            children: [
              // News 1
              Container(
                margin: EdgeInsets.all(16.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://media.philstar.com/photos/2023/10/02/jenny-mon-afternoon_2023-10-02_17-32-00.jpg',
                      height: 150.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        'PAGASA: Typhoon Jenny steadily strengthens over Philippine Sea',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // News 2
              Container(
                margin: EdgeInsets.all(16.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.network(
                      'https://media.philstar.com/photos/2023/06/13/18_2023-06-13_22-20-23.jpg',
                      height: 150.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        'Sara denies causing Commonwealth traffic jam; cop in viral video now under probe',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}