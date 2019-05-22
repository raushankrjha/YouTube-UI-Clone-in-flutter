import 'package:flutter/material.dart';
import 'package:youtubeui/model/channel.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'YouTube'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.white,
        title: Container(
          width: 100.0,
          height: 45.0,
          child: Image.network("https://darkeandtaylor.co.uk/wp/wp-content/uploads/2018/09/youtube-logo-png-transparent-image-e1537456990695.png"),

        ),
        actions: <Widget>
        [
          IconButton
          (
            icon: Icon(Icons.videocam,color: Colors.black54),
            onPressed: (){},
          ),
          IconButton
          (
            icon: Icon(Icons.search,color: Colors.black54),
            onPressed: (){},
          ),
          Container
          (
            margin: EdgeInsets.all(10.0),
            child: CircleAvatar(
            backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C5103AQET1B1xMkH-0A/profile-displayphoto-shrink_200_200/0?e=1558569600&v=beta&t=it8kcTi69M0Z4338kFVPpi4m3kvElazk8sINm4jHWfY"),
          )
          )

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: (int i){},
        items: 
      [
        
        BottomNavigationBarItem
        (
          icon:Icon(Icons.home) ,
          title: Text("Home")
        ),
         BottomNavigationBarItem
         (
          icon:Icon(Icons.trending_up) ,
          title: Text("Trending")
         ),
         BottomNavigationBarItem
         (
          icon:Icon(Icons.subscriptions) ,
          title: Text("Subscription")
         ),
         BottomNavigationBarItem(
          icon:Icon(Icons.mail) ,
          title: Text("Inbox")
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.library_music) ,
          title: Text("Library")
        )
      ]
      ,),
      body: _body()
    
    );
  }
 Widget _body() {
    return ListView.builder(
      itemCount: channelData.length,
      itemBuilder: (context,i) =>
      
        new  Column(
          children: <Widget>[
          
           Image.asset(channelData[i].thumbnilUrl),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                 backgroundImage: AssetImage(channelData[i].profileUrl),
              ),
              title: Text(
               channelData[i].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(channelData[i].name+" . " +channelData[i].views+"Views " +channelData[i].time+"ago"),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      
    );
  }
}