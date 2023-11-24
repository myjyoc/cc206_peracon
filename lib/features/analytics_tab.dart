import 'package:cc206_peracon/components/DebtToIncomeRatioTab.dart';
import 'package:cc206_peracon/components/IncomeExpenseAnalysisTab.dart';
import 'package:flutter/material.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xFF215757),
            title: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Analytics',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Color(0xFF215757), size: 24.0),
                  ),
                  onPressed: () {
                    // Profile action here
                  },
                ),
              ],
            ),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Income-Expense Analysis'),
                Tab(text: 'Debt-to-Income Ratio'),
              ],
              labelStyle: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.black, // Set the indicator color to black
              labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
            ),
          ),
          body: TabBarView(
            children: [
              IncomeExpenseAnalysisTab(),
              DebtToIncomeRatioTab(),
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
            currentIndex: 3,
            onTap: (int index) {
              switch (index) {
                case 0:
                  Navigator.pushReplacementNamed(context, '/home');
                  break;
                case 1:
                  Navigator.pushReplacementNamed(context, '/learn');
                  break;
                case 2:
                  Navigator.pushReplacementNamed(context, '/ask');
                  break;
                case 3:
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(AnalyticsPage());
}
