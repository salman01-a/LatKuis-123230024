import "package:flutter/material.dart";
import "../models/movie_model.dart";

class MovieDetail extends StatefulWidget {
  final MovieModel movie;

  const MovieDetail({super.key, required this.movie});

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie Detail Page')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.movie.imgUrl),

              const SizedBox(height: 16),

              Text(
                widget.movie.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "${widget.movie.genre} | ${widget.movie.year}",
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),

              const SizedBox(height: 8),

              Text(
                "Rating: ${widget.movie.rating}",
                style: const TextStyle(fontSize: 16, color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
