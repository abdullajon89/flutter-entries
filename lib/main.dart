import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hiflutter/widgets/premium_entries_carousel.dart';

void main() => runApp(Hiflutter());

class Hiflutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
          primaryTextTheme: TextTheme(
              headline6: TextStyle(color: Colors.black, fontSize: 25))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<MyHomePage> {
  Icon customIcon = Icon(Icons.search);
  Widget customSearchBar = Text('Home');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: customSearchBar,
        actions: <Widget>[
          IconButton(
            icon: customIcon,
            color: Colors.black,
            onPressed: () {
              setState(() {
                if (this.customIcon.icon == Icons.search) {
                  this.customIcon = Icon(Icons.cancel);
                  this.customSearchBar = TextField(
                    autofocus: true,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'searching...',
                    ),
                    style: TextStyle(fontSize: 16.0),
                  );
                } else {
                  this.customIcon = Icon(Icons.search);
                  this.customSearchBar = Text('Home');
                }
              });
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            color: Colors.black,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 0,
          showUnselectedLabels: true,
          onTap: (index) {},
          unselectedLabelStyle: TextStyle(color: Colors.red),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              title: Text('Home', style: TextStyle(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note, color: Colors.black),
              title: Text('Entries', style: TextStyle(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.black),
              title: Text('Settings', style: TextStyle(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black),
              title: Text('Account', style: TextStyle(color: Colors.black)),
            )
          ]),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          PremiumEntryCarousel(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recent entries',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5),
                ),
                Text(
                  'See all',
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            ),
          ),
          _builListView(context),
        ],
      )),
    );
  }

  ListView _builListView(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
          title: Text('The title item #$index'),
          subtitle: Text('Daryo.uz'),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.menu),
            ],
          ),
          trailing: Icon(Icons.arrow_forward),
        ));
      },
    );
  }
}
