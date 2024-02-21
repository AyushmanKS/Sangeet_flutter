import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sangeet_flutter/components/neu_box.dart';
import 'package:sangeet_flutter/models/playlist_provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) {
        // get playlist

        // get current song index

        // returning scaffold ui from here
        return SafeArea(
          child: Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              body: Column(
                children: [
                  // app bar
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // back button
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                        // title
                        const Text(
                          'Playlist',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        // menu button
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                        ),
                      ],
                    ),
                  ),

                  // album artwork
                  Padding(
                    padding: const EdgeInsets.all(55.0),
                    child: NeuBox(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Image.asset("assets/images/adiyeimg.jpg"),
                            ),
                          ),

                          // song and artist name and heart icon
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // song and artist name
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Adiye',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text('Dhibu Ninan Thomas and Kapil Kapilan'),
                                ],
                              ),
                              // heart icon: like
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  //song duration progress bar
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('0:00'),

                            // shuffle
                            Icon(Icons.shuffle),

                            // repeat
                            Icon(Icons.repeat),

                            // end time
                            Text('0:00'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Slider
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Slider(
                      min: 0,
                      max: 100,
                      value: 50,
                      activeColor: Colors.orange,
                      onChanged: (value) {},
                    ),
                  ),

                  // playback controls
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34.0),
                    child: Row(
                      children: [
                        // skip previous
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: const NeuBox(
                              child: Icon(Icons.skip_previous),
                            ),
                          ),
                        ),
                        // play/pause button
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {},
                            child: const NeuBox(
                              child: Icon(Icons.play_arrow),
                            ),
                          ),
                        ),
                        // skip forward
                        const SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: const NeuBox(
                              child: Icon(Icons.skip_next),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
