import 'package:trinity_lecture_app/domain/main_page/entities/landing_model.dart';

class Constants {
  static String apiKey = ''; // use your API key
  static String dummyImg =
      'https://bs-uploads.toptal.io/blackfish-uploads/components/blog_post_page/content/cover_image_file/cover_image/1270273/regular_1708x683_0722_Flutter_Advantages_and_Benefits_Zara_Newsletter___blog__1_-82380dbb7488ae7bed69819aff0ea04c-9ef2341e8ed6d862a067c83c750630b2.png';
  static List<String> chooseSectionForStories = [
    'arts',
    'automobiles',
    'food',
    'books/review',
    'movies',
    'sports',
    'politics',
    'fashion',
    'home',
    'business',
  ];

  static List<Landing> menuList = [
    Landing(title: "Dummy UI", desc: "Introducing basic flutter widget UI"),
    Landing(
        title: "Counter Example (State Management)",
        desc: "Introducing of state management using flutter_bloc. Level: 1"),
    Landing(
        title: "Input Validation Example (State Management)",
        desc:
            "Flutter state management using flutter_bloc to handle validation in text field. Level: 2"),
    Landing(
        title: "Calculator Example (State Management)",
        desc:
            "Flutter state management using flutter_bloc to calculate simple syntax. Level: 3"),
    Landing(
        title: "News App", desc: "API calling using free source from NYTimes"),
    Landing(
        title: "To Do App",
        desc:
            "Create a to do list that saved in local storage using hydrated_bloc. Level: 4"),
  ];
}
