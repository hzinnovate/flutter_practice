import "package:flutter/material.dart";

class CategoriesSheet extends StatelessWidget {
  const CategoriesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf7f1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfffcf7f1),
        elevation: 0,
        title: const Text(
          'Categories',
          style: TextStyle(fontSize: 16, color: Color(0xff0f444d)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.question_mark_sharp,
              size: 24,
              color: Color(0xff0f444d),
            ),
          )
        ],
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        children: [
          Image.network('https://picsum.photos/250?image=1'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://picsum.photos/250?image=4'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://picsum.photos/250?image=4'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://picsum.photos/250?image=4'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://picsum.photos/250?image=4'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://picsum.photos/250?image=4'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://picsum.photos/250?image=4'),
        ],
      ),
    );
  }
}

class SearchBottomSheet extends StatelessWidget {
  const SearchBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffcf7f1),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xfffcf7f1),
          elevation: 0,
          title: const Text(
            'Search',
            style: TextStyle(fontSize: 16, color: Color(0xff0f444d)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.question_mark_sharp,
                size: 24,
                color: Color(0xff0f444d),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("asdasdasdas"),
            ],
          ),
        ));
  }
}

class ProfileBottomSheet extends StatelessWidget {
  const ProfileBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffcf7f1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("asdasdasdas"),
            ],
          ),
        ));
  }
}
