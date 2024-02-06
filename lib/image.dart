import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  CustomListTile(
      {required this.title, required this.subtitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Stack(
        children: [
          Image.network(
            imageUrl,
            width: 32.0,
            height: 32.0,
          ),
        ],
      ),
      trailing: ElevatedButton(
        onPressed: () {
          // Lógica que se ejecutará al presionar el botón
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, // Color de fondo azul
        ),
        child: Text('Get', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom List Tiles'),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CupertinoSearchTextField(
                        placeholder: 'Search',
                        placeholderStyle: const TextStyle(color: Colors.grey),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        onSubmitted: (String value) {
                          print('Searched for: $value');
                        },
                      ),
                      const Positioned(
                        right: 8.0,
                        child: Icon(
                          CupertinoIcons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14.0),
                  //1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'Chrome cast',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 72.0),
                          Text(
                            'fire tv',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'pdf converter',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 30.0),
                          Text(
                            'mylittle pony',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'matematicas',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: CupertinoColors.systemBlue,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'juegos de terror',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 64, 150, 196)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            CustomListTile(
              title: 'Booking.com Travel Deals',
              subtitle: 'Hotel & Vacation Rentals',
              imageUrl:
                  'https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY',
            ),
            CustomListTile(
              title: 'Pokémon GO',
              subtitle: 'Epic AR adventure & online RPG',
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Pok%C3%A9mon_GO_logo.svg/250px-Pok%C3%A9mon_GO_logo.svg.png',
            ),
            CustomListTile(
              title: 'Roblox',
              subtitle: 'Join Millions of Experiences',
              imageUrl:
                  'https://play-lh.googleusercontent.com/WNWZaxi9RdJKe2GQM3vqXIAkk69mnIl4Cc8EyZcir2SKlVOxeUv9tZGfNTmNaLC717Ht',
            ),
            CustomListTile(
              title: 'Stumble Guys',
              subtitle: 'Fun multiplayer knockout game',
              imageUrl:
                  'https://play-lh.googleusercontent.com/Oci7f4WR0JShbn-n5hnwubbXaMssleb2b1Dv7AMOzFFcgstIdC9kg-E3LHx3em8RCaLf',
            ),
            CustomListTile(
              title: 'League of Legends: Wild Rift',
              subtitle: 'Competitive 5v5 MOBA Action',
              imageUrl:
                  'data:image/png;base64,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',
            ),
            CustomListTile(
              title: 'Pokémon Unite',
              subtitle: 'Choose a Pokémon and team up!',
              imageUrl:
                  'https://www.pokemon.com/static-assets/content-assets/cms2-es-es/img/video-games/video-games/pokemon_unite/pokemon-unite-logo-169.jpg',
            ),
            CustomListTile(
              title: 'Clash Royale',
              subtitle: 'Epic Real-Time-PvP Battles',
              imageUrl:
                  'data:image/jpeg;base64,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',
            ),
            CustomListTile(
              title: 'Mario Kart Tour',
              subtitle: 'Race around the world!',
              imageUrl:
                  'https://play-lh.googleusercontent.com/tF7r1G-aUWgDRWYYUEzUXr5EmsK3JC46qZczFMnhAosOYuTcpyRya-fq7xjffzKct3w3=w240-h480-rw',
            ),
            CustomListTile(
              title: 'Avatar World: City Life',
              subtitle: 'Be Whoever You Want!',
              imageUrl:
                  'https://cdn.now.gg/apps-content/com.pazugames.avatarworld/icon/avatar-world-city-life.png',
            ),
            CustomListTile(
              title: 'Subway Surfers',
              subtitle: 'Join the endless running fun!',
              imageUrl:
                  'https://play-lh.googleusercontent.com/_DJozx_BtL3aDgSd9VnLDG6dqsTdjXxWEvOUrN63oBHEeN8qLY164pePGutOcfeaqQ',
            ),
          ],
        ),
      ),
    );
  }
}
