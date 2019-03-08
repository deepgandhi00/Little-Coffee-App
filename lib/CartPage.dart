import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String name = "Chicked Salad";
  double price = 12.00;
  String size = "Large";
  double tax = 1.20;
  double subtotal = 13.20;
  double total = 13.0;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffDBC8A8),
          title: Text('Order Summary'),
          elevation: 0.0,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[


            //Image here
            Image(
              image: NetworkImage(
                  'http://deepgandhi.000webhostapp.com/images/expresso.png'),
              width: MediaQuery.of(context).size.width,
              height: 250.0,
            ),


            //content below the image
            Padding(
              padding: EdgeInsets.fromLTRB(19.0, 10.0, 19.0, 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  //product name here
                  Row(
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(color: Colors.black54,fontSize: 22.0),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),


                  //1st row here(base price)
                  Container(
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                                style: BorderStyle.solid))),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Base Price',
                              style: TextStyle(color: Colors.grey)),
                          Text('\$ ' + price.toString(),
                              style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ),
                  ),


                  //2nd row(quantity)
                  Container(
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                                style: BorderStyle.solid))),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Quantity',
                              style: TextStyle(color: Colors.grey)),
                          Text(quantity.toString(),
                              style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ),
                  ),


                  //3rd row(size)
                  Container(
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                                style: BorderStyle.solid))),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Size', style: TextStyle(color: Colors.grey)),
                          Text(size, style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ),
                  ),


                  //4th row(tax)
                  Container(
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                                style: BorderStyle.solid))),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Tax', style: TextStyle(color: Colors.grey)),
                          Text('\$' + tax.toString(),
                              style: TextStyle(color: Colors.grey))
                        ],
                      ),
                    ),
                  ),

                  //5th row(subtotal)
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Subtotal', style: TextStyle(color: Colors.grey)),
                        Text(subtotal.toString(),
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),


            //total widget here
            Container(
              decoration: BoxDecoration(
                  border: BorderDirectional(
                      top: BorderSide(
                          style: BorderStyle.solid,
                          width: 1.0,
                          color: Colors.grey),
                      bottom: BorderSide(
                          style: BorderStyle.solid,
                          width: 1.0,
                          color: Colors.grey))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 26.0, 20.0, 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Total:', style: TextStyle(fontSize: 18.0)),
                    Text('\$' + total.toString(),
                        style: TextStyle(fontSize: 18.0, color: Colors.green))
                  ],
                ),
              ),
            ),


            //place order and cance the order button widgets here
            Padding(
              padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 62.0,
                    child: FlatButton(
                      onPressed: () {},
                      color: Color(0xff0D9F67),
                      child: Text('Confirm The Order',
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0)),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 62.0,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                              style: BorderStyle.solid)),
                      child: FlatButton(
                        onPressed: () {},
                        color: Colors.white,
                        child: Text('Cancel The Order',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}