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
        songName: 'Adiye',
        artistName: 'Dhibu Ninan Thomas and Kapil Kapilan',
        albumArtImagePath: "assets/images/adiyeimg.jpg",
        audioPath: "assets/audio/Adiye.mp3"),

    // song 3
    Song(
        songName: 'Adiye',
        artistName: 'Dhibu Ninan Thomas and Kapil Kapilan',
        albumArtImagePath: "assets/images/adiyeimg.jpg",
        audioPath: "assets/audio/Adiye.mp3")
  ];

  // current song which is playing
  int? _currentSongIndex;

  /* Getters
  */
  List<Song> get playList {
    return _playlist;
  }

  int? get currentSongIndex {
    return _currentSongIndex;
  }

  /* Setters
  */
  set currentSongIndex(int? newIndex) {
    // update current song index
    _currentSongIndex = newIndex;
    // update ui
    notifyListeners();
  }
}
