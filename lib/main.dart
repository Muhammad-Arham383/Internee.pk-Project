import 'package:flutter/material.dart';
import 'package:internee_pk_project/container_listview.dart';
import 'package:internee_pk_project/featured_listview.dart';
import 'package:internee_pk_project/featured_rows.dart';
import 'package:internee_pk_project/popular_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 82, 157, 85)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Internee.pk'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Row(
                children: [
                  Center(
                      child: Text(
                    'Internee.pk',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ))
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.menu),
              title: Text('Internship'),
            ),
            const ListTile(
              leading: Icon(Icons.menu),
              title: Text('Internship Overview'),
            ),
            const ListTile(
              leading: Icon(Icons.comment_bank),
              title: Text('Bank Details'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Internee Portal'),
            ),
            const ListTile(
              leading: Icon(Icons.badge),
              title: Text('Job Portal'),
            ),
            const ListTile(
              leading: Icon(Icons.label_important_outline),
              title: Text('LMS'),
            ),
            Container(
              height: 0.5,
              width: width * 1.0,
              color: Colors.grey,
            ),
            const ListTile(
              leading: Icon(Icons.support_agent_rounded),
              title: Text('Support'),
            ),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text('Share internee.pk App'),
            ),
            const ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('Rate & Feedback'),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 232, 231, 231),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03, vertical: height * 0.02),
              child: SizedBox(
                  height: height * 0.3,
                  width: width * 1.0,
                  child: const ListViewWidget()),
            ),
            const FeaturedRows(featuredText: 'Featured Internships'),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06, vertical: height * 0.02),
              child: SizedBox(
                  height: height * 0.3,
                  width: width * 1.0,
                  child: const FeaturedListViewWidget()),
            ),
            const FeaturedRows(featuredText: 'Popular Technologies'),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06, vertical: height * 0.02),
              child: SizedBox(
                  height: height * 0.3,
                  width: width * 1.0,
                  child: const PopularListView()),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: width * 0.03),
              child: Container(
                  width: width * 0.9,
                  height: height * 0.16,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          stops: [
                            0.2,
                            0.6,
                            1.0
                          ],
                          colors: [
                            Colors.black,
                            Color.fromARGB(255, 101, 39, 60),
                            Colors.pink
                          ])),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: const Row(
                      children: [
                        Column(
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text('Invite Your Friends!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white)),
                            ),
                            FittedBox(
                              child: Text(
                                'Get chance for free internship',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                'introduce your friends to the Pakistan' 's',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                'Virtual internship platform',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
