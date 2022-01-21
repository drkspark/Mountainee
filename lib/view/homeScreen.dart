import 'package:classes/api.dart';
import 'package:classes/models/blog_list_model.dart';
import 'package:classes/models/blog_list.dart';
import 'package:classes/models/login_model.dart';
import 'package:classes/networkHelper.dart';
import 'package:classes/view/addBlog.dart';
// import 'package:classes/view/blogDetailScreen.dart';
import 'package:classes/view/settingPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final LoginModel loginModel;

  HomeScreen({required this.loginModel}); //Accepting  the data from the Login Page

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Get Blog Data
  Future<BlogListModel> getBlogList() async {
    var response = await hitApi(blogsApi); // It will be JSON

    // Just Checking if we are getting the response
    // print(response);

    BlogListModel blogListModel = BlogListModel.fromJson(response);

    return blogListModel; // This will be in Mapping Form
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger_sharp))
        ],
      ),
      body: Container(
        color: Colors.white38,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<BlogListModel>(
            future: getBlogList(),
            builder: (context, snap) {
              //EveryData is here in the snap
              if (snap.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snap.hasData) {
                if (snap.data!.status == 'true') {
                  //? If the intended data is recieved
                  return ListView.builder(
                      itemCount: snap.data!.totalCount,
                      itemBuilder: (context, i) {
                        return _tile(snap.data!.blogList![i]);
                      });
                } else {
                  //? If the requied data was not returned i.e. status == 'false'
                  return Center(
                    child: Text("${snap.data!.message}"),
                  );
                }
              } else {
                return Center(
                  child: Text("${snap.error}"),
                );
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddBlog()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
      drawer: _drawer(),
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
                      // "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F1.bp.blogspot.com%2F-x_00uf0IyW4%2FYSaWrh8Ry8I%2FAAAAAAAB--U%2FNkTa0MCiH_Uk9c2P2zg-3yCaj5rbheMEACLcBGAsYHQ%2Fs512%2FTooltip_PenguKnight_SpiritFairy_SpiritFairy1_Tier1.LittleLegends_11_18.png&f=1&nofb=1")
                    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.darkspark.com%2Fwp-content%2Fthemes%2Fonetone-pro%2Fimages%2FDarkSparkLogo-Filled-black.png&f=1&nofb=1"
                  )
                )
              ],
              currentAccountPicture: CircleAvatar(
                child: Image.network(
                      widget.loginModel.image!,
                ),
              ),
              accountName: Text(widget.loginModel.bloggerName!),
              accountEmail: Text(widget.loginModel.email!)
          ),
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
  Widget _tile(BlogList data) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        height: 225,
        child: Column(
          children: [
//! Image

            Container(
              height: 150,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        data.image!,
                      ))),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.mood),
                          radius: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          data.bloggerName!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(
                      data.liked! == "true"
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.pink,
                    )
                  ],
                ),
              ),
            ),

//! Data about the Image

            Container(
                height: 70,
                color: Colors.blueAccent,
                padding: EdgeInsets.all(2),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.nordic_walking),
                          Text(data.mountain!),
                        ],
                      ),
                      Text(data.postTime!),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    data.shortDescription!,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    data.wordsByBlogger!,
                    overflow: TextOverflow.ellipsis,
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
