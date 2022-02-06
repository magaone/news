import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kiez_news/services/app_service.dart';



//// anothner owq uestion do u wanna work further for the less 120 i will give you UI o
//t sure okay for taloday i accept the 80 euro and i will prepare UI which i wanna change sent you in the night so we can work tomorrow on it okay? i think the difficult part is done, no idea, maybe you add something here from admin panel, i added these two articles  for you, how can we add automatically from google news ? dont think there is such option ah okay bro than lets finish for today and on fiverr first part is done !! thanks! thanks you you are very patient
//
// yes, also i setted up admin panel, you can check that out okay but admin pannel maybe i wanna delete because i think its to in german" auffällig " hmm but you should use it to add articles, add categories one questions why is this place blank
// told you we are close, congrats, you are a motherfucker bro wyou get 20 tip from me but what did you change this time look me
// copy and paste this to project folder the error or u can disconnet   omg how why because you did somethng on xcode ? show me
class Article {

  String? category;
  String? contentType;
  String? title;
  String? description;
  String? thumbnailImagelUrl;
  String? youtubeVideoUrl;
  String? videoID;
  int? loves;
  String? sourceUrl;
  String? date;
  String? timestamp;
  int? views;

  Article({
    
    this.category,
    this.contentType,
    this.title,
    this.description,
    this.thumbnailImagelUrl,
    this.youtubeVideoUrl,
    this.videoID,
    this.loves,
    this.sourceUrl,
    this.date,
    this.timestamp,
    this.views,
    
  });


  factory Article.fromFirestore(DocumentSnapshot snapshot){
    Map d = snapshot.data() as Map<dynamic, dynamic>;
    return Article(
      category: d['category'],
      contentType: d['content type'],
      title: d['title'],
      description: d['description'],
      thumbnailImagelUrl: d['image url'],
      youtubeVideoUrl: d['youtube url'],
      videoID: d['content type'] == 'video'? AppService.getYoutubeVideoIdFromUrl(d['youtube url']) : '',
      loves: d['loves'],
      sourceUrl: d['source'],
      date: d['date'],
      timestamp: d['timestamp'],
      views: d['views'] ?? null,


    );
  }
}