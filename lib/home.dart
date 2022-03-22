import 'package:flutter/material.dart';
import 'package:tugas_data_navigation/musics_lyric.dart';
import 'package:tugas_data_navigation/music_detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Lyrics'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final MusicLyric musics = musicList[index];
          return new GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MusicDetail(detailMusics: musics)));
              },
              child: Card(
                  child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 10, // <-- Spacing between children
                              children: <Widget>[
                                Text(musics.title,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text(musics.singer,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.6))),
                              ],
                            )
                          ])),
                ],
              )));
        },
        itemCount: musicList.length,
      ),
    );
  }
}
