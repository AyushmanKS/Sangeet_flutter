import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sangeet_flutter/components/my_drawer.dart';
import 'package:sangeet_flutter/models/playlist_provider.dart';
import 'package:sangeet_flutter/models/song.dart';
import 'package:sangeet_flutter/pages/song_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// get playlist provider
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    // get playlist provider
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

// goToSong function
  void goToSong(int songIndex) {
    // update current song index
    PlaylistProvider().currentSongIndex = songIndex;

    // navigate to song page
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SongPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app theme
      backgroundColor: Theme.of(context).colorScheme.background,
// app bar --------------------------------------------------------------------
      appBar: AppBar(
        title: const Text('S A N G E E T'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const MyDrawer(),
// main body--------------------------------------------------------------------
      body: Consumer<PlaylistProvider>(builder: (context, value, child) {
        // get the playlist
        final List<Song> playlist = value.playList;

        // return list view ui
        return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (context, index) {
              // get the individual song
              final Song song = playlist[index];

              return ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                leading: Image.asset(song.albumArtImagePath),
                onTap: () => goToSong(index),
              );
            });
      }),
    );
  }
}
