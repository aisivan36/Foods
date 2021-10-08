import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// [_selectedIndex] keeps track of which tab is currently selected.
  int _selectedIndex = 0;

  /// The [List<Widget> pages] when user tap between the different tab bar items,
  /// it shows container widgets of different colors.
  static List<Widget> pages = <Widget>[
    //TODO replace with card 1
    Container(color: Colors.red),
    //TODO replace with card 2
    Container(color: Colors.green),
    //TODO replace with card 3
    Container(color: Colors.blue),
  ];

  /// setState is to set the index of the item that the user is pressed, it will trigger and rebuild the widget and update the color
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Foods',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),

      /// Widget shows on the pages
      body: pages[_selectedIndex],

      /// Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        // When use tap to the button it will set different color
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,

        ///[currentIndex] tells teh `bottom` `navigation` bar which tab bar item to highlight.
        currentIndex: _selectedIndex,

        /// [onTap] when the user tap to the button it will trigger the setState and
        /// bring the user to intended page that user has been tapped
        onTap: _onItemTapped,

        // This defines list array of three buttons
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
        ],
      ),
    );
  }
}
