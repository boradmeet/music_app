import 'package:flutter/material.dart';
import 'package:music_app/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: const Text(
          "Rainbow Music Player",
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: Global.songs.length,
        itemBuilder: (context, i) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            border: Border(
              top: (i == 0)
                  ? const BorderSide(color: Colors.redAccent)
                  : BorderSide.none,
              bottom: const BorderSide(color: Colors.redAccent),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: ListTile(
            onTap: () {
              setState(() {
                Global.index = i;
                Global.playSong = Global.songs[i];
              });
              Navigator.of(context).pushNamed("player_page");
            },
            leading: Image.network(
              "${Global.songs[i]["image"]}",
            ),
            title: SizedBox(
              height: 20,
              child: Text(
                "${Global.songs[i]["name"]}",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
