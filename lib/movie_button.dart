import 'package:flutter/material.dart';

class MovieButton extends StatefulWidget {
  const MovieButton({super.key});

  @override
  State<MovieButton> createState() => _MovieButtonState();
}

class _MovieButtonState extends State<MovieButton> {
  bool isAdd = false;
  bool isFavorite = false;
  bool isDownload = false;
  bool isShare = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: const Color(0xff292b37),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff292b37).withOpacity(0.5),
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ]),
            child: IconButton(
              icon: Icon(
                isAdd ? Icons.add_box_sharp : Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isAdd = !isAdd;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: const Color(0xff292b37),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff292b37).withOpacity(0.5),
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ]),
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: const Color(0xff292b37),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff292b37).withOpacity(0.5),
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ]),
            child: IconButton(
              icon: Icon(
                isDownload ? Icons.download_done : Icons.file_download,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isDownload = !isDownload;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: const Color(0xff292b37),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff292b37).withOpacity(0.5),
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ]),
            child: IconButton(
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
