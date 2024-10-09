import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
      ),
      themeMode: ThemeMode.light,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  void showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  final List<Map<String, String>> myItem = [
    {
      "img": "https://media.licdn.com/dms/image/D5612AQHXSPVuoki5yw/article-cover_image-shrink_720_1280/0/1690864573442?e=2147483647&v=beta&t=q7RG9zthtzEfyID3vtTNwvNh_9Zb71XdN405IS3TcHs",
      "title": "Web Development"
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4bltNxyXCmTTjBUSrTkHyy5_10dIpwnkvDw&s",
      "title": "Ai Image Blocker"
    },
    {
      "img": "https://www.simplilearn.com/ice9/free_resources_article_thumb/is_web_development_good_career.jpg",
      "title": "SEO Blacklink"
    },
    {
      "img": "https://media.licdn.com/dms/image/D5612AQEnyToXVG-rRw/article-cover_image-shrink_600_2000/0/1708343746706?e=2147483647&v=beta&t=RNSALbRxHDcGEIY4GYU3gkSDZjkzTg0ThYID5KaCnwc",
      "title": "Organic Web Traffic"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
       body: GridView.builder(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
           crossAxisSpacing: 1,

         ),
         itemCount: myItem.length,
        itemBuilder: (context,index){
           return GestureDetector(
             onTap: (){},
             child: Container(
               margin: const EdgeInsets.all(10),
               width: double.infinity,
               height: 300,
               child: Image.network(
                 myItem[index]['img']!,
                 fit: BoxFit.fill,
               ),
             ),
           );
        },
       ),





      // ListView.builder(
      //   itemCount: myItem.length,
      //   itemBuilder: (context, index) {
      //     return GestureDetector(
      //       onTap: () {},
      //       child: Container(
      //         margin: const EdgeInsets.all(10),
      //         width: double.infinity,
      //         height: 300,
      //         child: Image.network(
      //           myItem[index]['img']!,
      //           fit: BoxFit.fill,
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
