import 'package:flutter/material.dart';
import 'package:tugas_data_navigation/musics_lyric.dart';

class MusicDetail extends StatelessWidget {
  final MusicLyric detailMusics;
  const MusicDetail({Key? key, required this.detailMusics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(detailMusics.title),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  direction: Axis.vertical,
                                  spacing: 8, // <-- Spacing between children
                                  children: <Widget>[
                                    Text(detailMusics.title,
                                        style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text(detailMusics.singer,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text(detailMusics.album,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Colors.black.withOpacity(0.6))),
                                  ],
                                )
                              ]))
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(detailMusics.lyric,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.8,
                          )),
                    ),
                  ),
                ],
              ),
            )));
  }
}
