class channel{
  final String name;
  final String title;
  final String time;
  final String views;
  final String thumbnilUrl;
  final String profileUrl;

  channel({this.name, this.title, this.time, this.views,this.thumbnilUrl,this.profileUrl});
}

List<channel> channelData = [

  new channel(
    name: "Raushan Jha",
    title: "Flutter YouTube UI Clone",
    time: "1 week",
    views: "20M",
    thumbnilUrl: "assets/youtube.jpg",
    profileUrl: "assets/raushan.jpg"
  ),
  new channel(
    name: "Raushan Jha",
    title: "Whatsapp UI in Flutter",
    time: "2 week ",
    views: "10M ",
    thumbnilUrl: "assets/whatsapp.jpg",
    profileUrl: "assets/raushan.jpg"
  ),
  new channel(
    name: "Raushan Jha",
    title: "Profile UI in Flutter",
    time: "1 day ",
    views: "10M ",
    thumbnilUrl: "assets/profile.jpg",
     profileUrl: "assets/raushan.jpg"
  ),
  new channel(
    name: "Raushan Jha",
    title: "Instagram UI Clone in Flutter",
    time: "2 months ",
    views: "5M ",
    thumbnilUrl: "assets/insta.jpg",
    profileUrl: "assets/raushan.jpg"
 
  ),
];