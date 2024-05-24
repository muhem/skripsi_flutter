import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> movies = [
      {
        'banner':
            'https://image.tmdb.org/t/p/original/tXHpvlr5F7gV5DwgS7M5HBrUi2C.jpg',
        'title': 'Film 1',
        'rating': 4.5,
        'trailer': 'https://www.youtube.com/watch?v=MJPdA2xWfII'
      },
      {
        'banner': 'https://link-to-banner2.jpg',
        'title': 'Film 2',
        'rating': 4.0,
        'trailer': 'https://link-to-trailer2.com'
      },
    ];

    String searchQuery = '';

    List<Map<String, dynamic>> filteredMovies = movies.where((movie) {
      return movie['title'].toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari Film',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                // setState(() {
                //   searchQuery = value;
                // });
              },
            ),
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Jumlah kolom
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.7,
            ),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      movie['banner']!,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie['title']!,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Rating: ${movie['rating']}'),
                          ElevatedButton(
                            onPressed: () =>
                                controller.launchURL(movie['trailer']!),
                            child: Text('Tonton'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
