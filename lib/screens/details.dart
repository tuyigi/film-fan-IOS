import 'package:film_fan_ios/configs/config.dart';import 'package:film_fan_ios/models/detailsMovie.dart';import 'package:flutter/material.dart';import 'package:flutter_rating_bar/flutter_rating_bar.dart';class Details extends StatefulWidget{  final DetailsMovie;  Details({    @required this.DetailsMovie,  });  @override  State<StatefulWidget> createState() {    // TODO: implement createState    return _details(DetailsMovie);  }  }class _details extends State<Details>{  DetailsMovie movieInfo;  _details(this.movieInfo);  Config config=new Config();  @override  void initState() {    // TODO: implement initState    super.initState();  }  // fetch genres movie  // fetch recommended movie  @override  Widget build(BuildContext context) {    // TODO: implement build    return Scaffold(appBar: AppBar(title:Text("Details")),    body: SingleChildScrollView(child:      Column(crossAxisAlignment:CrossAxisAlignment.start,children: [        Image.network(config.BASE_URL_IMAGE+movieInfo.poster_path,height: 500,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,),        Padding(padding:EdgeInsets.only(left: 10,top: 10),child:Text(movieInfo.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),        Padding(padding:EdgeInsets.only(left: 10,top: 10),child:Text(movieInfo.release_date,style: TextStyle(fontSize: 18),)),        RatingBar.builder(            initialRating: movieInfo.vote_average/2,            minRating: 1,            direction: Axis.horizontal,            allowHalfRating: true,            ignoreGestures: true,            itemCount: 5,            itemPadding: EdgeInsets.symmetric(vertical: 4.0),            itemBuilder: (context, _) => Icon(              Icons.star,              color: Colors.amber,            ),            onRatingUpdate: (rating) {            },            itemSize:25        ),        Padding(padding:EdgeInsets.only(left: 10,top: 10),child:Text(movieInfo.overview,style: TextStyle(fontSize: 18),)),        Padding(padding:EdgeInsets.only(left: 10,top: 10),child:Text("Genres",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))      ],),),);  }}