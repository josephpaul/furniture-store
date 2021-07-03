import 'package:flutter/material.dart';

class CategorySnippet extends StatefulWidget {
  @override
  _CatSnippetState createState() => _CatSnippetState();
}

class _CatSnippetState extends State<CategorySnippet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Container(
            // height: 50,
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            margin: EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff00000000),
                      offset: Offset(0, 5),
                      blurRadius: 20)
                ]),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Image.asset(
                    'lib/assets/icon-chair.png',
                    width: 20,
                  ),
                ),
                Container(
                  child: Text(
                    'Armchair',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 15),
            padding: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Image.asset(
                    'lib/assets/icon-bed.png',
                    width: 25,
                  ),
                ),
                Container(
                  child: Text(
                    'Bed',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 15),
            padding: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Image.asset(
                    'lib/assets/icon-lamp.png',
                    width: 20,
                  ),
                ),
                Container(
                  child: Text(
                    'Lamp',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 15),
            padding: EdgeInsets.only(left: 30, right: 30),
            decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Image.asset(
                    'lib/assets/cupboard.png',
                    width: 20,
                  ),
                ),
                Container(
                  child: Text(
                    'Cupboard',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductSnippet extends StatefulWidget {
  @override
  _ProdSnippetState createState() => _ProdSnippetState();
}

class _ProdSnippetState extends State<ProductSnippet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      // width: 150,
      margin: EdgeInsets.only(right: 10, left: 10, bottom: 20),
      decoration: BoxDecoration(
          color: Color(0xffF8F8F8), borderRadius: BorderRadius.circular(23)),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding:
                  EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
              child: Image.asset(
                'lib/assets/chair.png',
                width: 90,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              'Totor chai',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 2),
                          child: Text(
                            '\$',
                            style: TextStyle(
                              color: Color(0xffE0BC1D),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '256.00',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.star,
                          color: Color(0xffE0BC1D),
                          size: 15,
                        ),
                      ),
                      Container(
                        child: Text(
                          '4.5',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ))
                ],
              )),
        ],
      ),
    );
  }
}

class FABBottomAppBarItem {
  FABBottomAppBarItem({this.iconData, this.text});
  IconData iconData;
  String text;
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    this.items,
    this.centerItemText,
    this.height: 60.0,
    this.iconSize: 30.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  }) {
    assert(this.items.length == 2 || this.items.length == 4);
  }
  final List<FABBottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
      Navigator.pushNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: (i) {
          if (i == 0) {
            Navigator.pushNamed(context, '/home');
          } else {
            Navigator.pushNamed(context, '/camera');
          }
        },
      );
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: widget.iconSize),
            Text(
              widget.centerItemText ?? '',
              style: TextStyle(color: widget.color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    FABBottomAppBarItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? Colors.black : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
              onTap: () => onPressed(index),
              child: Container(
                margin: EdgeInsets.only(top: 9),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(item.iconData, color: color, size: widget.iconSize),
                    Text(
                      item.text,
                      style: TextStyle(color: color),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
