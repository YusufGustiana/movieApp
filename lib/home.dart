import 'package:flutter/material.dart';
import 'package:movie/navbar.dart';
import 'package:movie/movie_baru.dart';
import 'package:movie/segera_tayang.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Hello',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'images/Profile.png',
                      height: 40,
                      width: 40,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: const Color(0xff292b37),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.white54,
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      margin: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.white54)),
                        maxLines: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const UpComing(),
            const SizedBox(
              height: 30,
            ),
            const NewMovies(),
          ],
        )),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
