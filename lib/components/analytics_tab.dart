import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the pie chart
    Map<String, double> dataMap = {
      'Shopping': 4,
      'Personal Spending': 6,
      'Debts': 7,
      'Savings': 10,
      'Utilities': 8,
      'Insurance': 5,
      'Housing': 30,
      'Transportation': 10,
      'Food': 15,
    };

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
                      'Analytics',
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
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle category button click
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(0, 0, 0, 1), // #215757
                          ),
                          minimumSize: MaterialStateProperty.all(Size(160.0, 40.0)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                          ),
                        ),
                        child: Text(
                          'Income-Expense Analysis',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle category button click
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(33, 87, 87, 1), // #215757
                          ),
                          minimumSize: MaterialStateProperty.all(Size(160.0, 40.0)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                          ),
                        ),
                        child: Text('Debt-to-Income Ratio'),
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle category button click
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(33, 87, 87, 1), // #215757
                          ),
                          minimumSize: MaterialStateProperty.all(Size(160.0, 40.0)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                          ),
                        ),
                        child: Text('Daily Trend Analysis'),
                      ),
                    ],
                  ),
                ),
              ),

              // Pie Chart
              Container(
                margin: EdgeInsets.all(16.0),
                child: PieChart(
                  dataMap: dataMap,
                  chartType: ChartType.ring,
                  chartRadius: MediaQuery.of(context).size.width / 2.7,
                  ringStrokeWidth: 32,
                  colorList: [
                    Colors.blue,
                    Colors.green,
                    Colors.red,
                    Colors.yellow,
                    Colors.orange,
                    Colors.purple,
                    Colors.cyan,
                    Colors.amber,
                    Colors.indigo,
                  ],
                  chartValuesOptions: ChartValuesOptions(
                    showChartValuesInPercentage: true,
                  ),
                ),
              ),

              // Explanation Paragraph
              Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255,	235,	234, 1), // #215757
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  "You're spending a significant portion of your income on housing. Consider exploring ways to reduce your housing costs, such as downsizing, finding roommates, or negotiating your rent. Additionally, you can explore alternative housing options such as shared living spaces or looking for more affordable neighborhoods. By finding creative solutions to lower your housing expenses, you can free up more funds for savings, debt repayment, or other financial goals.",
                  style: TextStyle(fontSize: 16.0, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ],
          ),
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
          selectedItemColor: Color.fromRGBO(16, 114, 86, 0.912),
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
    );
  }
}

void main() {
  runApp(AnalyticsPage());
}
