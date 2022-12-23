import 'package:flutter/material.dart';
import 'package:movie/movie_button.dart';
import 'package:movie/navbar.dart';
import 'package:movie/recomendasi.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              'images/1.jpeg',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8)
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/1.jpeg',
                            height: 220,
                            width: 150,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 40, top: 70),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8)
                            ]),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const MovieButton(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Qorin',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Kemunculan jin Qorin mulai menghantui dan membuat para siswi melakukan dosa yang tak terbayangkan. Nyawa mereka pun terancam diambil alih oleh jin Qorin itu. Zahra, Yolanda, dan teman-temannya, bersama dua pengasuh asrama, Umi Hana (Dea Annisa) dan Umi Yana (Putri Ayudya) harus memberanikan diri bangkit melawan jin Qorin. Sanggupkah mereka melawan sisi kelam dan jahat dalam diri mereka sendiri?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const RecomendasiPage()
              ],
            )),
          )
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
