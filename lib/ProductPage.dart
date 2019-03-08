import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<String> quanity = ['1', '2', '3'];
  List<String> size = ['1', '2', '3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDBC8A8),
        title: Text('Kick Frappe', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,
            image: NetworkImage(
                'http://deepgandhi.000webhostapp.com/images/expresso.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Kick Frappe',
                  style: TextStyle(fontSize: 22.0),
                ),
                Text('\$8.00',
                    style: TextStyle(color: Colors.green, fontSize: 22.0))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            child: Text(
              'A delicious creamy Coffee kick frappe, topped with irrestable whipped cream indulgent coffee drizzle. Perfect combination',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
                    child: SizedBox(
                        child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        style: TextStyle(fontSize: 18.0),
                        hint: Text('Quantity'),
                        onChanged: (String newValue) {},
                        items: quanity.map((String value) {
                          return DropdownMenuItem(
                              value: value,
                              child: Center(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.grey),
                                ),
                              ));
                        }).toList(),
                      ),
                    )),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
                    child: SizedBox(
                        child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        style: TextStyle(fontSize: 18.0),
                        hint: Text('Size'),
                        onChanged: (String newValue) {},
                        items: quanity.map((String value) {
                          return DropdownMenuItem(
                              value: value,
                              child: Center(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.grey),
                                ),
                              ));
                        }).toList(),
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 18.0, 12.0, 10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 62.0,
              child: FlatButton(
                onPressed: () {},
                color: Color(0xff0D9F67),
                child: Text('Place The Order',
                    style: TextStyle(color: Colors.white, fontSize: 16.0)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 62.0,
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1.0,style: BorderStyle.solid)),
                              child: FlatButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Text('Add to favorites',
                      style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
