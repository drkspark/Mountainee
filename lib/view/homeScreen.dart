import 'package:classes/view/settingPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  // The return type here is Widget which is dynamic i.e. we can return any type of the widget
  Widget build(BuildContext context) {
    print("Rebuilding the whole Scaffold");
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              // We are using seperate widgets for now as we don't have to deal with state for now
              for (int i = 1; i <= 5; i++) _tile(),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      drawer: _drawer(),
      //? By default it will take the place in the appBar replacing the back  button on the left side

      //use endDrawer for a drawer at the right side of the appBar
      // endDrawer: Drawer(),
    );
  }

  _drawer() {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F1.bp.blogspot.com%2F-x_00uf0IyW4%2FYSaWrh8Ry8I%2FAAAAAAAB--U%2FNkTa0MCiH_Uk9c2P2zg-3yCaj5rbheMEACLcBGAsYHQ%2Fs512%2FTooltip_PenguKnight_SpiritFairy_SpiritFairy1_Tier1.LittleLegends_11_18.png&f=1&nofb=1"),
                )
              ],
              currentAccountPicture: CircleAvatar(
                child: Image.network(
                    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.darkspark.com%2Fwp-content%2Fthemes%2Fonetone-pro%2Fimages%2FDarkSparkLogo-Filled-black.png&f=1&nofb=1"),
              ),
              accountName: Text("drkspark"),
              accountEmail: Text("drkspark@mail.org")),
          ListTile(
            title: Text("Home Page"),
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text("Trending Page"),
            leading: Icon(Icons.trending_up),
          ),
          ListTile(
            title: Text("Settings"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Setting()));
            },
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text("About Page"),
            leading: Icon(Icons.person),
          ),
        ],
      ),
    );
  }

  //! Private function which return the widget(Conntainer) we need
  //! These are called as seperate widget
  Widget _tile() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.green,
            ),
            Container(
              height: 50,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

/*
//! Class which return the widget(in this case Container) we need
//! This is a Helper Widget class
//! Each and every containor has it's state
class Tile extends StatefulWidget {
  final double height;
  final double width;
  final Color col;

  //? Constructor of this class
  Tile(this.height, this.width, this.col);

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    print("Rebuilding the Container #Helper Widget");
    return Container(
      height: widget.height,
      width: widget.width,
      color: widget.col,
      child: IconButton(
        onPressed: (){
          setState(() {
            
          });
        },
        icon: Icon(Icons.ac_unit),
      ),
    );
  }
}
*/