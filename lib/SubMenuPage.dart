import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SubMenuPage extends StatefulWidget {
  int menuId;

  SubMenuPage(this.menuId);
  @override
  _SubMenuPageState createState() => _SubMenuPageState(menuId);
}

class _SubMenuPageState extends State<SubMenuPage> {
  int menuId;

  _SubMenuPageState(this.menuId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xffDBC8A8),
            expandedHeight: 250.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Coffee'),
              centerTitle: true,
              background: Image.network(
                  'https://deepgandhi.000webhostapp.com/images/coffee_menu_blur.jpg'),
            ),
          ),
          SliverGrid.count(
              crossAxisCount: 2, childAspectRatio: 1 / 1.2, children: cards)
        ],
      ),
    );
  }

  List<CardProduct> cards = [
    CardProduct("Expresso", "Blue Ridhe Blend",
        "http://deepgandhi.000webhostapp.com/images/expresso.png", 4.35, false),
    CardProduct("Expresso", "Blue Ridhe Blend",
        "http://deepgandhi.000webhostapp.com/images/expresso.png", 4.35, false),
    CardProduct("Expresso", "Blue Ridhe Blend",
        "http://deepgandhi.000webhostapp.com/images/expresso.png", 4.35, false),
    CardProduct("Expresso", "Blue Ridhe Blend",
        "http://deepgandhi.000webhostapp.com/images/expresso.png", 4.35, false),
    CardProduct("Expresso", "Blue Ridhe Blend",
        "http://deepgandhi.000webhostapp.com/images/expresso.png", 4.35, false)
  ];
}

class CardProduct extends StatefulWidget {
  String title;
  String subTitle;
  String imageUrl;
  double price;
  bool liked;

  CardProduct(this.title, this.subTitle, this.imageUrl, this.price, this.liked);

  @override
  CardProductState createState() {
    return new CardProductState(title,subTitle,imageUrl,price,liked);
  }
}

class CardProductState extends State<CardProduct> {
  String title;
  String subTitle;
  String imageUrl;
  double price;
  bool liked;

  CardProductState(this.title, this.subTitle, this.imageUrl, this.price, this.liked);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10.0,),
          Text(widget.title, style: TextStyle(color: Colors.grey,fontSize: 18.0)),
          Text(
            widget.subTitle,
            style: TextStyle(color: Colors.grey.withOpacity(0.8)),
          ),
          Image(
            image: NetworkImage(widget.imageUrl),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('\$'+widget.price.toString(), style: TextStyle(color: Colors.green)),
                widget.liked
                    ?GestureDetector(
                      onTap: (){
                        setState(() {
                          this.widget.liked=false;
                        });
                      },
                      child: IconTheme(
                        data: IconThemeData(color: Colors.red),
                        child: Icon(MdiIcons.heart),
                      ),
                    ) 
                    : GestureDetector(
                      onTap: (){
                        setState(() {
                          this.widget.liked=true;
                        });
                      },
                      child: IconTheme(
                        data: IconThemeData(color: Colors.grey),
                        child: Icon(MdiIcons.heart),
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
