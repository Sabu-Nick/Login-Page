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
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
        ),
      ),
      themeMode: ThemeMode.light,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySackBar(messages, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(messages)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 10,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              MySackBar("Search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MySackBar("Shopping Cart", context);
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              MySackBar("Account Circle", context);
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          MySackBar("I am Floating Action Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: "Feed"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Account"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySackBar("I am NewsFeed", context);
          }
          if (index == 1) {
            MySackBar("I am Messages", context);
          }
          if (index == 2) {
            MySackBar("I am Home Button", context);
          }
          if (index == 3) {
            MySackBar("I am Notification", context);
          }
          if (index == 4) {
            MySackBar("I am Account Button", context);
          }
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                currentAccountPicture: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png"),
                accountName: Text("SABBIR AHMED", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 25,),),
                accountEmail: Text("sabbirahamed610@gmail.com", style: TextStyle(color: Colors.black87),),
              )
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text("Upload Your Photo"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Account"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Messages"),
              onTap: (){},
            ),
           ListTile(
             leading: Icon(Icons.share_outlined),
             title: Text("Share"),
             onTap: (){},
           ),
            ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text("Notification"),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Account"),
              onTap: (){},
            ),
            const Divider(color: Colors.black12,),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.password),
              title: Text("Reset Password"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Log Out"),
              onTap: (){},
            )
          ],
        ),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              // border: Border.all(color: Colors.indigo, width: 3,),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("SABBIR", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),),
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              // border: Border.all(color: Colors.indigo, width: 3,),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("SABBIR", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),),
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              // border: Border.all(color: Colors.indigo, width: 3,),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("SABBIR", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),),
          ),





        ],
      )
    );
  }
}
