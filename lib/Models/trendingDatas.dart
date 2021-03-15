import 'package:flutter/cupertino.dart';

class Trending with ChangeNotifier{
  final String imgUrl,title,subtittle,views,comment,time,tags,id;

  Trending({this.imgUrl,this.title,this.subtittle,this.views,this.comment, this.time,this.tags,this.id});
}
class TrendingData with ChangeNotifier{
  List<Trending> _list =[
    Trending(id: "1",tags:"HOT",imgUrl: "https://newscentral.africa/wp-content/uploads/2020/02/Wizkid.jpg",views: "100",time: "10 mins ago",title: "Wizkid agbawo abulm don drop everywhere burst wahala for who never play the album",comment: "120",subtittle: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"),
    Trending(id: "2",tags:"HOT",imgUrl: "https://www.nme.com/wp-content/uploads/2020/11/Davido-1.jpg",views: "100",time: "10 mins ago",title: "Olamide agbawo abulm don drop everywhere burst wahala for who never play the album",comment: "120",subtittle: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"),
    Trending(id: "3",tags:"HOT",imgUrl: "https://pyxis.nymag.com/v1/imgs/61b/e12/b09fe9d403174ab9d5caccce9e34e5b30e-burna-boy.rsquare.w1200.jpg",views: "100",time: "10 mins ago",title: "Burna Boy agbawo abulm don drop everywhere burst wahala for who never play the album",comment: "120",subtittle: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"),
    Trending(id: "4",tags:"HOT",imgUrl: "https://live.mrf.io/statics/i/ps/storage.googleapis.com/thisday-846548948316-wp-data/wp-media/2020/08/3fa6dd9a-olamide.jpg?width=1200&enable=upscale",views: "100",time: "10 mins ago",title: "Olamide agbawo abulm don drop everywhere burst wahala for who never play the album",comment: "120",subtittle: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"),
    Trending(id: "5",tags:"HOT",imgUrl: "https://www.musicinafrica.net/sites/default/files/styles/article_slider_large/public/images/article/201910/phyno21.jpg?itok=Y3sV07jO",views: "100",time: "10 mins ago",title: "phyno agbawo abulm don drop everywhere burst wahala for who never play the album",comment: "120",subtittle: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"),
  ];
  List<Trending> get list{
    return [..._list];
  }
  Trending findId(String id){
    return _list.firstWhere((element) => element.id == id);
  }
}