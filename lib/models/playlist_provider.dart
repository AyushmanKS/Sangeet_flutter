import 'package:flutter/material.dart';
import 'package:sangeet_flutter/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  // playlist of songs
  final List<Song> _playlist = [
    // song 1
    Song(
        songName: 'Adiye',
        artistName: 'Dhibu Ninan Thomas and Kapil Kapilan',
        albumArtImagePath: "assets/images/adiyeimg.jpg",
        audioPath: "assets/audio/Adiye.mp3"),

    // song 2
    Song(
        songName: 'Pehle bhi main',
        artistName: 'Vishal mishra',
        albumArtImagePath: "assets/images/pbm.jpg",
        audioPath: "assets/audio/Pehle_bhi_main.mp3"),

    // song 3
    Song(
        songName: 'Haan tu hain',
        artistName: 'Pritam, KK',
        albumArtImagePath: "assets/images/hth.jpg",
        audioPath: "assets/audio/Adiye.mp3")
  ];

  // current song which is playing
  int? _currentSongIndex;
  /*
  Audio Player*/
  // duration
  //constructor
  //initially not playing
  //play the song
  // pause current song
  // resume playing
  // pause or resume
  // seek to a pecific position in current song
  // play next song
  // play previous song
  //listen to suration
  // dispose audioplayer

  /* Getters
  */
  List<Song> get playList => _playlist;

  int? get currentSongIndex => _currentSongIndex;

  /* Setters
  */
  set currentSongIndex(int? newIndex) {
    // update current song index
    _currentSongIndex = newIndex;
    // update ui
    notifyListeners();
  }
}
