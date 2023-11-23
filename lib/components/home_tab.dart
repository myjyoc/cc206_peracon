import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white, size: 24.0),
                ),
                onPressed: () {
                  // Profile action here
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Name Section
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 3.0, 3.0, 3.0),
                child: Text(
                  'Rhowena Alimeos',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Wallet Section
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Balance',
                          style: TextStyle(
                            color: Color(0xFF215757),
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'P100,000', // Replace with actual balance
                          style: TextStyle(
                            color: Color(0xFF215757),
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCircleIcon(Icons.account_balance, 'Savings', 'P60,000', Color(0xFF27C153), Color(0xFFE7F7EC)),
                        _buildCircleIcon(Icons.attach_money, 'Income', 'P20,000', Color(0xFFD64BC2), Color(0xFFF3E7F8)),
                        _buildCircleIcon(Icons.money_off, 'Expenses', 'P10,000', Color(0xFFFF4437), Color(0xFFFFEBEA)),
                        _buildCircleIcon(Icons.credit_card, 'Debts', 'P30,000', Colors.black, Colors.grey[300]!),
                      ],
                    ),
                  ],
                ),
              ),

              // Tips Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'Tips',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Two boxes with icons and finance tips text
              _buildTipsBox(Icons.home, 'Income Tip', "You're spending a significant portion of your income on housing. Consider exploring ways to reduce your housing costs, such as downsizing, finding roommates, or negotiating your rent.", Colors.blue),
              SizedBox(height: 8.0),
              _buildTipsBox(Icons.trending_down, 'Debt Tip', "You have the opportunity to pay your debt using your available savings. Consider allocating a portion of your savings towards debt repayment. By utilizing your savings to pay off your debt, you can eliminate the financial burden sooner and achieve peace of mind.", Colors.orange),

              // Goals Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // Goal boxes
              _buildGoalBox(Icons.laptop, 'Buy a Laptop', 'P50,000', 80),
              _buildGoalBox(Icons.car_rental, 'Buy a Car', 'P500,000', 50),
              _buildGoalBox(Icons.home, 'Buy a House', 'P1,000,000', 30),

              // Your content for the Home tab goes here
              // Add widgets, images, etc. as needed
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Ensures equal space for all tabs
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
          selectedItemColor: Color.fromRGBO(16, 114, 86, 0.912),
          unselectedItemColor: Colors.grey,
          currentIndex: 0, // The index of the current tab (Home in this case)
          onTap: (int index) {
            switch (index) {
              case 0:
                break;
              case 1:
                Navigator.pushReplacementNamed(context, '/learn');
                break;
              case 2:
                Navigator.pushReplacementNamed(context, '/ask');
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

  Widget _buildTipsBox(IconData icon, String title, String content, Color boxColor) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 3.0),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(5.0),
            child: Icon(
              icon,
              size: 30.0,
              color: boxColor,
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleIcon(IconData icon, String label, String figure, Color iconColor, Color bgColor) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 3.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgColor,
          ),
          padding: EdgeInsets.all(12.0),
          child: Icon(
            icon,
            size: 30.0,
            color: iconColor,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 2.0),
        Text(
          figure,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildGoalBox(IconData icon, String description, String price, int completionPercent) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 3.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      icon,
                      size: 30.0,
                      color: Color(0xFF215757),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            '$completionPercent%',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF215757),
            ),
          ),
        ],
      ),
    );
  }
}
