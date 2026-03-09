import 'package:flutter/material.dart';
import "../models/movie_model.dart";
import "movie_detail.dart";

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  @override
  Widget build(BuildContext context) {
    /*
      implementasikan widget untuk menampilkan list movie yang sudah diambil dari dummy data
        - gunakan ListView.builder untuk menampilkan list movie
        - setiap item movie ditampilkan menggunakan Card widget yang berisi judul movie dan poster movie
        - ketika item movie ditekan, navigasikan ke halaman MovieDetailPage dengan membawa data movie yang dipilih
        
    Text(
                movieList[index].genre +
                    " | " +
                    movieList[index].year.toString() +
                    " | " +
                    movieList[index].rating.toString(),
              ),

              IconButton(
                onPressed: () {
                  setState(() {
                    movieList[index].isAdded = !movieList[index].isAdded;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: movieList[index].isAdded
                      ? Colors.blue
                      : Colors.grey,
                ),
              ),
     */
    return Scaffold(
      appBar: AppBar(title: const Text('Movie List Page')),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(movieList[index].imgUrl),
              title: Text(movieList[index].title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tahun :" + movieList[index].year.toString()),
                  Text("Gendre :" + movieList[index].genre),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        movieList[index].isAdded = !movieList[index].isAdded;
                      });
                    },
                    child: Text("Tambah ke Daftar"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: movieList[index].isAdded
                          ? Colors.blue
                          : Colors.grey,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              trailing: Text(movieList[index].rating.toString()),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetail(movie: movieList[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
