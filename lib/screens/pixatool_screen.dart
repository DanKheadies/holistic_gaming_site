import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/data/data.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class PixaToolScreen extends StatefulWidget {
  const PixaToolScreen({super.key});

  @override
  State<PixaToolScreen> createState() => _PixaToolScreenState();
}

class _PixaToolScreenState extends State<PixaToolScreen> {
  ExpansionTileController gifController = ExpansionTileController();
  ExpansionTileController photoController = ExpansionTileController();
  ExpansionTileController videoController = ExpansionTileController();
  List<bool> isTileExpanded = [false, false, false];
  List<int> tileOrder = [];

  void closeAllTiles() {
    setState(() {
      isTileExpanded.map((tile) => tile == false);
      tileOrder.clear();
    });

    gifController.collapse();
    photoController.collapse();
    videoController.collapse();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      bottAppBar: AccordionCloseBar(
        isTileExpanded: isTileExpanded,
        tileOrder: tileOrder,
        controllers: [
          gifController,
          photoController,
          videoController,
        ],
        handleCloseAllTiles: closeAllTiles,
        handleCloseLastTile: () {
          final index = tileOrder.last;
          setState(() {
            isTileExpanded[index] = false;
          });
          if (index == 0) {
            videoController.collapse();
          } else if (index == 1) {
            gifController.collapse();
          } else if (index == 2) {
            photoController.collapse();
          }
        },
      ),
      child: Column(
        children: [
          const QuotesHeader(),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                const Text(
                  'HolisticGaming.com does not own the rights to any of the following video, music or content. They are for training with Pixatool. Ordered by creation date.',
                ),
                const SizedBox(height: 25),
                PixaToolTile(
                  title: 'Videos',
                  isExpanded: isTileExpanded[0],
                  controller: videoController,
                  expansionHandler: (value) {
                    setState(() {
                      isTileExpanded[0] = value;
                      if (value) {
                        tileOrder.add(0);
                      } else {
                        tileOrder.removeWhere((value) => value == 0);
                      }
                    });
                  },
                  content: const [
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/botw-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2Fbotw-8bit.mp4?alt=media&token=d49b248e-b90e-4591-ab9c-a72217a485e5',
                      text: 'The Legend of Zelda: Breath of the Wild',
                      linkUrl: 'https://www.youtube.com/watch?v=zw47_q9wbBE',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/WotLK-OG-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FWotLK-OG-8bit.mp4?alt=media&token=386b213f-2e93-4d11-8cd3-d73364d99b7d',
                      text: 'World of Warcraft: Wrath of the Lich King',
                      linkUrl: 'https://www.youtube.com/watch?v=BCr7y4SLhck',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/DragonHouse-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FDragonHouse-8bit.mp4?alt=media&token=1bd9c6cb-61c1-4b64-b26f-a1e250d1156b',
                      text:
                          'The Tonight Show ft. Dragon House - Chuck E. Cheese Challenge',
                      linkUrl: 'https://www.youtube.com/watch?v=ALOMm1LGARQ',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/MarvelMashup-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FMarvelMashup-8bit.mp4?alt=media&token=d5ea7c95-d192-47ba-a90c-15b08c9b0ccf',
                      text: 'BattleScones\'s Marvel Homage',
                      linkUrl: 'https://www.youtube.com/watch?v=kVZSdyZ7Ft4',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/MajorasMask-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FMajorasMask-8bit.mp4?alt=media&token=70c8b904-970e-44d8-8f82-ee146b780add',
                      text: 'EmberLab\'s Majora\'s Mask - Terrible Fate',
                      linkUrl: 'https://www.youtube.com/watch?v=vbMQfaG6lo8',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/WesterosWorld-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FWesterosWorld-8bit.mp4?alt=media&token=9213d842-4cad-4577-a0ff-4c4438414bc6',
                      text: 'EvilPlottingDinosaur\'s Westeros World',
                      linkUrl:
                          'https://www.reddit.com/r/freefolk/comments/brm3ky/what_is_the_point_of_it_get_a_couple_of_cheap/',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/SmashWars-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FSmashWars-8bit.mp4?alt=media&token=730537d6-01dc-40c8-b61c-111bc805f0ef',
                      text: 'PushingButtons\'s Super Smash Bros: Infinity War',
                      linkUrl: 'https://www.youtube.com/watch?v=YKL5tviGvIc',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/Halo-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FHalo-8bit.mp4?alt=media&token=20528f3a-9f69-4f7a-9efa-47a3904fcd70',
                      text: 'Halo\'s Main Menu',
                      linkUrl: 'https://www.youtube.com/watch?v=wuSu6q7fuq4',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/AdventureWave-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FAdventureWave-8bit.mp4?alt=media&token=a731257b-949c-480b-aa79-a85befa95d9d',
                      text: 'Akira the Don\'s AdventureWave',
                      linkUrl:
                          'https://www.youtube.com/watch?v=CW0tx_Ok63k&t=680s',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/Sacrifice-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FSacrifice-8bit.mp4?alt=media&token=73d18173-f82f-455a-8f8b-b88c97b92a94',
                      text: 'Akira the Don\'s Sacrifice ft. Jordan Peterson',
                      linkUrl: 'https://www.youtube.com/watch?v=Ll2gdKHXOYc',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/2020TheGame-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2F2020TheGame-8bit.mp4?alt=media&token=aca184be-6e4c-4dee-a645-0ec4b2cb5553',
                      text: 'Prob MrCheapCheap via Reddit',
                      linkUrl:
                          'https://www.reddit.com/r/NatureIsFuckingLit/comments/f7v2at/puddle_that_looks_like_earth_from_space/',
                    ),
                    PixaToolVideoBlock(
                      picUrl:
                          'assets/images/pixatool/video-posters/SUCCredits-8bit.png',
                      videoUrl:
                          'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/pixatool-videos%2FSUCCredits-8bit.mp4?alt=media&token=60209ed8-a937-47b5-80cf-9b91511f9850',
                      text: 'Steven Universe Car Credits by annapantsu',
                      linkUrl: 'https://www.youtube.com/watch?v=UMoxeTVQgCs',
                    ),
                  ],
                ),
                PixaToolTile(
                  title: 'Gifs',
                  isExpanded: isTileExpanded[1],
                  controller: gifController,
                  expansionHandler: (value) {
                    setState(() {
                      isTileExpanded[1] = value;
                      if (value) {
                        tileOrder.add(1);
                      } else {
                        tileOrder.removeWhere((value) => value == 1);
                      }
                    });
                  },
                  content: const [
                    PixaToolGifBlock(
                      gifUrl: 'assets/images/pixatool/gifs/TreeTunnel-8bit.gif',
                      text: 'Psyklon\'s Tree Tunnel',
                      linkUrl:
                          'https://giphy.com/gifs/loop-trippy-psychedelic-3ohzdI93VXikuYs8Mw',
                    ),
                    PixaToolGifBlock(
                      gifUrl: 'assets/images/pixatool/gifs/Mountains-8bit.gif',
                      text: 'Xpotentialdesign\'s Mountains Flyover',
                      linkUrl: 'https://giphy.com/gifs/kimPrHNUDksc14FXCB',
                    ),
                    PixaToolGifBlock(
                      gifUrl: 'assets/images/pixatool/gifs/MoreHeroes-8bit.gif',
                      text: 'Dan Kheadies\'s DBS More Heroes Mashup',
                      linkUrl: 'https://www.youtube.com/',
                    ),
                    PixaToolGifBlock(
                      gifUrl: 'assets/images/pixatool/gifs/Drone1-8bit.gif',
                      text: 'Minchan Kim\'s Drone Piloting',
                      linkUrl: 'https://www.instagram.com/p/BtLgPInnUW8/',
                    ),
                  ],
                ),
                PixaToolTile(
                  title: 'Photos',
                  isExpanded: isTileExpanded[2],
                  controller: photoController,
                  expansionHandler: (value) {
                    setState(() {
                      isTileExpanded[2] = value;
                      if (value) {
                        tileOrder.add(2);
                      } else {
                        tileOrder.removeWhere((value) => value == 2);
                      }
                    });
                  },
                  content: [
                    PixaToolPicBlock(
                      picList: pixatoolJedi,
                      text: 'Alleman\'s Jedi Templar Knight',
                      linkUrl:
                          'https://www.deviantart.com/alleman/art/Jedi-Templar-Knight-161108356',
                      width: width,
                    ),
                    PixaToolPicBlock(
                      picList: pixatoolMaul,
                      text: 'Bazaine\'s Darth Maul',
                      linkUrl:
                          'https://www.reddit.com/r/StarWars/comments/fu7nh4/i_just_drew_maul_with_this_one_i_took_quite_a_lot/',
                      width: width,
                    ),
                    PixaToolPicBlock(
                      picList: pixatoolAdipose,
                      text: 'sciencephotolibrary\'s Fat tissue, SEM',
                      linkUrl: 'https://www.sciencephoto.com/media/439930/view',
                      width: width,
                    ),
                    PixaToolPicBlock(
                      picList: pixatoolDavid,
                      text: 'me',
                      linkUrl: 'https://holisticgaming.com/#/squad/david',
                      width: width,
                    ),
                    PixaToolPicBlock(
                      picList: pixatoolJC,
                      text: 'JC',
                      linkUrl: 'https://holisticgaming.com/#/squad/david',
                      width: width,
                    ),
                    PixaToolPicBlock(
                      picList: pixatoolJCColors,
                      text: 'JC Colors',
                      linkUrl: 'https://holisticgaming.com/#/squad/david',
                      width: width,
                    ),
                    PixaToolPicBlock(
                      picList: pixatoolYusuke,
                      text: 'markolios\'s Yusuke Urameshi',
                      linkUrl:
                          'https://www.deviantart.com/markolios/art/Yusuke-Urameshi-643390337',
                      width: width,
                    ),
                    PixaToolPicBlock(
                      picList: pixatoolAniston,
                      text: 'jenniferannistn\'s jennifer aniston',
                      linkUrl:
                          'https://twitter.com/jenniferannistn/status/1011859750869274625',
                      width: width,
                    ),
                    PixaToolPicBlock(
                      picList: pixatoolStarters,
                      text: 'Squiffybodge\'s Pokemon Starters',
                      linkUrl:
                          'https://www.reddit.com/r/gaming/comments/ec0y56/pokemon_starters_made_from_layers_of_paper/',
                      width: width,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
