import 'package:trinity_lecture_app/domain/main_page/entities/landing_model.dart';
import 'package:trinity_lecture_app/domain/news_page/entities/news_model.dart';

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
    Landing(
        title: "Dummy UI",
        desc: "Introducing basic flutter widget UI",
        id: "dummy"),
    Landing(
        title: "Counter Example (State Management)",
        desc: "Introducing of state management using flutter_bloc. Level: 1",
        id: "counter"),
    Landing(
        title: "Input Validation Example (State Management)",
        desc:
            "Flutter state management using flutter_bloc to handle validation in text field. Level: 2",
        id: "input"),
    Landing(
        title: "Calculator Example (State Management)",
        desc:
            "Flutter state management using flutter_bloc to calculate simple syntax. Level: 3",
        id: "calculator"),
    Landing(
        title: "News App",
        desc: "API calling using free source from NYTimes",
        id: "news"),
    Landing(
        title: "To Do App",
        desc:
            "Create a to do list that saved in local storage using hydrated_bloc. Level: 4",
        id: "todo"),
  ];

  static List<News> newsList = [
    News(
      title: 'Things I Thought Made Sense Just Don\'t Anymore',
      desc: 'By Mira Jacob \u2022 2023-12-28',
    ),
    News(
      title: 'Simpleton? Genius? Who Was Tom Smothers?',
      desc: 'By Nell Scovell \u2022 2023-12-28',
    ),
    News(
      title: 'I Promised My Sister I Would Write About How She Chose To Die',
      desc: 'By Steven Petrow \u2022 2023-12-28',
    ),
    News(
      title: 'Tom Smothers, Comic Half of the Smothers Brothers, Dies at 86',
      desc: 'By William Grimes \u2022 2023-12-27',
    ),
  ];
}
