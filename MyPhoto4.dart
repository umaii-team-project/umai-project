import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'MyHomePage.dart';

class Photo4 extends StatefulWidget {
  const Photo4({super.key});

  @override
  State<Photo4> createState() => _Photo4State();
}

class _Photo4State extends State<Photo4> {
  late final _ratingController;

  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;

  IconData? _selectedIcon;

  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Photo 4'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(243, 249, 180, 61),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            icon: Icon(
              Icons.close,
            ),
          )),
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 250,
            width: 250,
            child: Image.asset(
              'Foto4.png',
            ),
          )
        ]),
        RatingBarIndicator(
          rating: double.parse(_ratingController.text),
          itemBuilder: (context, index) => Icon(
            _selectedIcon ?? Icons.star,
            color: Colors.amber,
          ),
          itemCount: 5,
          itemSize: 50.0,
          unratedColor: Colors.amber.withAlpha(50),
          direction: _isVertical ? Axis.vertical : Axis.horizontal,
        ),
        SizedBox(height: 20.0),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              controller: _ratingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter rating',
                labelText: 'Enter rating',
                suffixIcon: MaterialButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'Rate',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )),
        SizedBox(
          height: 160,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          SizedBox(
            width: 100,
            height: 50,
            child: ElevatedButton(
                onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Download'),
                        content: const Text('Do want to save?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                child: Text(
                  'Download',
                )),
          ),
        ])
      ]),
    );
  }

  Widget _ratingBar(int mode) {
    switch (mode) {
      case 1:
        return RatingBar.builder(
          initialRating: _initialRating,
          minRating: 1,
          direction: _isVertical ? Axis.vertical : Axis.horizontal,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(50),
          itemCount: 5,
          itemSize: 50.0,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            _selectedIcon ?? Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {});
          },
          updateOnDrag: true,
        );
      case 2:
        return RatingBar(
          initialRating: _initialRating,
          direction: _isVertical ? Axis.vertical : Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          ratingWidget: RatingWidget(
            full: _image('assets/heart.png'),
            half: _image('assets/heart_half.png'),
            empty: _image('assets/heart_border.png'),
          ),
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          onRatingUpdate: (rating) {
            setState(() {});
          },
          updateOnDrag: true,
        );
      case 3:
        return RatingBar.builder(
          initialRating: _initialRating,
          direction: _isVertical ? Axis.vertical : Axis.horizontal,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return Icon(
                  Icons.sentiment_very_dissatisfied,
                  color: Colors.red,
                );
              case 1:
                return Icon(
                  Icons.sentiment_dissatisfied,
                  color: Colors.redAccent,
                );
              case 2:
                return Icon(
                  Icons.sentiment_neutral,
                  color: Colors.amber,
                );
              case 3:
                return Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.lightGreen,
                );
              case 4:
                return Icon(
                  Icons.sentiment_very_satisfied,
                  color: Colors.green,
                );
              default:
                return Container();
            }
          },
          onRatingUpdate: (rating) {
            setState(() {});
          },
          updateOnDrag: true,
        );
      default:
        return Container();
    }
  }

  Widget _image(String asset) {
    return Image.asset(
      asset,
      height: 30.0,
      width: 30.0,
      color: Colors.amber,
    );
  }

  Widget _heading(String text) => Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 24.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      );
}

Widget _heading(String text) => Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 24.0,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
