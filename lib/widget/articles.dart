import 'package:flutter_web/material.dart';
import 'article_item.dart';
import '../model/models.dart';

class Articles extends StatelessWidget {
  final _articles = <Article>[
    Article(
      publishDate: DateTime.parse("20190511"),
      title: "Android CameraX: Preview, Analyze, Capture",
      summary:
          "CameraX is an Android Jetpack library that was built with the intent to make camera development easier, which until now has been quite painful. In contrast with the fine grained control camera2's API offered, CameraX (which uses the Camera2 API under the hood) aims to strike a balance between abstracting...",
      url: "https://proandroiddev.com/android-camerax-preview-analyze-capture-1b3f403a9395",
    ),
    Article(
      publishDate: DateTime.parse("20190412"),
      title: "Android settings panels: App engagement",
      summary:
          "As an app developer, you want people to engage with your application: Interact with it, spend time on it and return to it frequently, which is why keeping your user focused on your app while they’re in it and minimizing distraction is important.\nIt’s safe to say that most apps...",
      url: "https://proandroiddev.com/android-settings-panels-app-engagement-f21aecfa443",
    ),
    Article(
      publishDate: DateTime.parse("20190405"),
      title: "ViewModels: State persistence — SavedState",
      summary:
          "For each app that’s launched on an Android device, the system creates a process to run it. When an app is no longer in the foreground, the system doesn’t kill its process, but it keeps it in a -least recently used- cache. So what happens when the system is low...",
      url: "https://proandroiddev.com/viewmodels-state-persistence-savedstate-54d015acad82",
    ),
    Article(
      publishDate: DateTime.parse("20190317"),
      title: "Android Q: Sharing shortcuts",
      summary:
          "Android Q introduces sharing shortcuts, a faster way to share content from your app, think of it as direct share on steroids. In this article you’ll learn about the difference between the two, and how to implement sharing shortcuts.",
      url: "https://proandroiddev.com/android-q-sharing-shortcuts-3be59ea2f4ec",
    ),
    Article(
      publishDate: DateTime.parse("20181029"),
      title:
          "Android: Building self-contained, lifecycle aware testable components",
      summary:
          "In Android applications, many actions are lifecycle driven, and as an application grows in robustness, so does the actions a lifecycle owner (say an Activity or Fragment) has to manage in its lifecycle callback methods, making the code harder to maintain and test -if not implemented correctly-.\nIn this article,...",
      url:
          "https://proandroiddev.com/android-building-self-contained-lifecycle-aware-testable-components-63f25474646f",
    ),
    Article(
      publishDate: DateTime.parse("20180823"),
      title: "Android Jetpack: Navigation to the rescue",
      summary:
          "Navigation is a common problem that every Android app has to solve. There are many challenges around it that become more noticeable as the app grows in complexity: From Fragment transactions, deep linking to different parts of the app, passing arguments in a safe and secure way, handling up/back navigation...",
      url:
          "https://proandroiddev.com/android-jetpack-navigation-to-the-rescue-fe588271d36",
    ),
    Article(
      publishDate: DateTime.parse("20180711"),
      title: "Real-Time Face Detection on Android with ML Kit",
      summary:
          "Google introduced a new product in the Firebase Suite earlier this year, Firebase’s Machine Learning Kit. ML Kit brings Google’s machine learning expertise to both Android and iOS apps in a powerful way. In this post I will dive into how we can make use of it in order to...",
      url:
          "https://heartbeat.fritz.ai/building-a-real-time-face-detector-in-android-with-ml-kit-f930eb7b36d9",
    ),
    Article(
      publishDate: DateTime.parse("20180528"),
      title: "A German, an Arab and a Korean post on your app, now what?",
      summary:
          "Suppose you have a social media kind of app where users can share content (containing text). When a German, an Arab and a Korean respectively share content in German, Arabic and Korean, how will they be able to understand each other’s posts? (assuming they don’t understand the other languages, and...",
      url:
          "https://proandroiddev.com/a-german-an-arab-and-a-korean-post-on-your-app-now-what-99a0493cfce8",
    ),
    Article(
      publishDate: DateTime.parse("20180519"),
      title: "Firebase Machine Learning Kit 101++",
      summary:
          "With the mentioned features offered by Firebase’s ML Kit (Text and landmark recognition, face detection, barcode scanning and image labeling), I decided to build an app that revolves around them. Its use case is pretty straight-forward: Capture a photo or choose an image from the device’s gallery, select one of...",
      url:
          "https://proandroiddev.com/firebase-machine-learning-kit-101-f6ab9e7d03c3",
    ),
    Article(
      publishDate: DateTime.parse("20180516"),
      title: "Firebase Machine Learning Kit 101",
      summary:
          "With the tremendous evolution of interest in machine learning in the last couple of years, it’s only natural to see a product like Firebase ML (Machine Learning) Kit see the day. Nowadays, we dispose of enough computational power to run machine learning models on our mobile devices, a task which...",
      url:
          "https://proandroiddev.com/firebase-machine-learning-kit-101-738baea0253f",
    ),
    Article(
      publishDate: DateTime.parse("20180319"),
      title:
          "Constant loading is a sore to the eyes! And LiveData is the remedy!",
      summary:
          "I wonder how many hours of my life I’ve spent waiting on a screen to load, watching a progressBar turn and turn for what seemed to be an infinity.\nI recently opened a news app I hadn’t visited in ages (Note to myself: Follow the news more often), and on...",
      url:
          "https://proandroiddev.com/constant-loading-sores-the-eyes-732da88f5ba",
    ),
    Article(
      publishDate: DateTime.parse("20180309"),
      title: "Flutter: Hello world!",
      summary:
          "Coming from an Android development background using Java and Kotlin, getting accustomed to the syntax of Dart and using Flutter took me no time. My first experiences playing around with them were actually quite a delight. hopefully this article will gear you up to start your Flutter journey.",
      url: "https://medium.com/@husayn.hakeem/flutter-hello-world-d15032356c81",
    ),
    Article(
      publishDate: DateTime.parse("20180205"),
      title: "The magic in Kotlin: Delegates",
      summary:
          "Delegate properties in Kotlin are basically regular properties that delegate how they are read and written to another function (think of getters and setters).\nFrom an Android development perspective, this can be used in powerful ways. But since this article is a basic introduction to the subject, all examples are...",
      url:
          "https://proandroiddev.com/the-magic-in-kotlin-delegates-377d27a7b531",
    ),
    Article(
      publishDate: DateTime.parse("20170927"),
      title:
          "Android by example: Google’s recent Android paging Library — Pokedex",
      summary:
          "Google recently announced the paging library, which is quite an interesting take on implementing paging functionality. In this article I try to explain different components needed to implement the paging library, the role of each one and how they interact.\nThe chunks of code presented in this article are from...",
      url:
          "https://medium.com/@husayn.hakeem/android-by-example-googles-recent-android-paging-library-pokedex-d9ec1d4986e9",
    ),
    Article(
      publishDate: DateTime.parse("20170917"),
      title: "Exploring Java #2: Try-With-Resources",
      summary:
          "Try-With-Resources? Automatic resource management? AutoCloseable? Are we still talking about Java? Yes indeed! and by the end of this article you’ll be familiar with all these -seemingly misterious- concepts and more.\nFor the sake of discussion, let’s say we want a simple Java method that reads a single line from...",
      url:
          "https://medium.com/@husayn.hakeem/exploring-java-2-try-with-resources-f9ccc3178348",
    ),
    Article(
      publishDate: DateTime.parse("20170910"),
      title: "Android by example : MVVM +Data Binding -> View (Part 4)",
      summary:
          "This article is part 4/4 from a series or articles about implementing the MVVM design pattern and data binding in a sample Tic-Tac-Toe application. If you’re unfamiliar with the terms data binding or MVVM pattern, refer to part 1 for a quick refresher. In part 2 we implement the Model...",
      url:
          "https://medium.com/@husayn.hakeem/android-by-example-mvvm-data-binding-view-part-4-ecfda0c45db8",
    ),
    Article(
      publishDate: DateTime.parse("20170910"),
      title: "Android by example : MVVM +Data Binding -> View Model (Part 3)",
      summary:
          "This article is part 3/4 from a series or articles about implementing the MVVM design pattern and data binding in a sample Tic-Tac-Toe application. If you’re unfamiliar with the terms data binding or MVVM pattern, refer to part 1 for a quick refresher. In part 2 we implement the Model...",
      url:
          "https://medium.com/@husayn.hakeem/android-by-example-mvvm-data-binding-view-model-part-3-3dcd08caf650",
    ),
    Article(
      publishDate: DateTime.parse("20170910"),
      title: "Android by example : MVVM +Data Binding -> Model (Part 2)",
      summary:
          "This article is part 2/4 from a series or articles about implementing the MVVM design pattern and data binding in a sample Tic-Tac-Toe application. If you’re unfamiliar with the terms data binding or MVVM pattern, refer to part 1 for a quick refresher before continuing along this part.",
      url:
          "https://medium.com/@husayn.hakeem/android-by-example-mvvm-data-binding-model-part-2-82b5e3ee6ccb",
    ),
    Article(
      publishDate: DateTime.parse("20170910"),
      title: "Android by example : MVVM +Data Binding -> Introduction (Part 1)",
      summary:
          "There’s nothing better that having clean modular interdependent code. Following design guidelines definitely does help achieve this. In Android, the MVP and MVVM patterns are very popular, they help having a good architecture in our projects. This article is an attempt by me to explain through a simple example the...",
      url:
          "https://medium.com/@husayn.hakeem/android-by-example-mvvm-data-binding-introduction-part-1-6a7a5f388bf7",
    ),
    Article(
      publishDate: DateTime.parse("20170910"),
      title: "Exploring Java #1: Method references",
      summary:
          "Java 8 brings method references, which is basically a shortened syntax for a lambda expression that executes only 1 method. Its general syntax is the following:...",
      url:
          "https://medium.com/@husayn.hakeem/exploring-java-1-method-references-5a0364e1b7f",
    ),
    Article(
      publishDate: DateTime.parse("20170217"),
      title:
          "My experience with Google’s Associate Android Developer Certification",
      summary:
          "In this article I talk about my personal experience through the Google Android Certification exams. I’m expressing my opinion, don’t take it for facts. Also, any information given here about the Google Android Certification is also available in more details on its official website.",
      url:
          "https://medium.com/@husayn.hakeem/my-experience-with-googles-associate-android-developer-certification-40b34b27ebc7",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, bottom: 32, left: 32),
      child: ListView.separated(
        itemCount: _articles.length,
        itemBuilder: (context, index) => ArticleItem(
          article: _articles[index],
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 16,
        ),
      ),
    );
  }
}
