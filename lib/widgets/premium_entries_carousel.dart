import 'package:flutter/material.dart';
import 'package:hiflutter/models/entry_model.dart';
import 'package:hiflutter/premium_entry_model.dart';

class PremiumEntryCarousel extends StatefulWidget {
  PremiumEntryCarousel({Key key}) : super(key: key);

  @override
  _PremiumEntryCarouselState createState() => _PremiumEntryCarouselState();
}

class _PremiumEntryCarouselState extends State<PremiumEntryCarousel> {
  int _current = 0;
  int listIndex;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Premium entries',
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
          SizedBox(
            height: 10.0,
          ),
          Container(
              height: 200.0,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    _current = index;
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    );
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(entries, (index, url) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.black : Colors.black26),
              );
            }),
          )
        ],
      ),
    );
  }
}
