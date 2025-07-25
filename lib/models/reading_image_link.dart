import 'package:equatable/equatable.dart';

class ReadingImageLink extends Equatable {
  final String name;
  final String imageUrl;
  final String linkUrl;

  const ReadingImageLink(
    this.name,
    this.imageUrl,
    this.linkUrl,
  );

  @override
  List<Object> get props => [
        name,
        imageUrl,
        linkUrl,
      ];

  static List<ReadingImageLink> davidsReadings = const [
    // ReadingImageLink(
    //   '',
    //   '',
    //   '',
    // ),
    ReadingImageLink(
      'Be Useful',
      'assets/images/squad/david/books/beUseful.jpg',
      'https://www.amazon.com/Be-Useful-Seven-Tools-Life/dp/0593655958',
    ),
    ReadingImageLink(
      'Isles of the Emberdark',
      'assets/images/squad/david/books/islesEmberdark.jpg',
      'https://www.amazon.com/Isles-Emberdark-Cosmere-Secret-Projects/dp/B0F4RTHZV5',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 14',
      'assets/images/squad/david/books/berserkV14.jpg',
      'https://www.amazon.com/Berserk-Deluxe-14/dp/1506741061',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 13',
      'assets/images/squad/david/books/berserkV13.jpg',
      'https://www.amazon.com/Berserk-Deluxe-13-Kentaro-Miura/dp/1506727573',
    ),
    ReadingImageLink(
      'A Court of Frost and Starlight',
      'assets/images/squad/david/books/courtFrostStarlight.jpg',
      'https://www.amazon.com/Court-Frost-Starlight-Thorns-Roses-ebook/dp/B075818VDG',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 12',
      'assets/images/squad/david/books/berserkV12.jpg',
      'https://www.amazon.com/Berserk-Deluxe-12/dp/1506727565',
    ),
    ReadingImageLink(
      'A Court of Wings and Ruin',
      'assets/images/squad/david/books/courtWingsRuin.jpg',
      'https://www.amazon.com/Court-Wings-Ruin-Thorns-Roses/dp/1635575605',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 11',
      'assets/images/squad/david/books/berserkV11.jpg',
      'https://www.amazon.com/Berserk-Deluxe-11/dp/1506727557',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 10',
      'assets/images/squad/david/books/berserkV10.jpg',
      'https://www.amazon.com/Berserk-Deluxe-10/dp/1506727549',
    ),
    ReadingImageLink(
      'A Court of Mist and Fury',
      'assets/images/squad/david/books/courtMistFury.jpg',
      'https://www.amazon.com/Court-Mist-Fury-Thorns-Roses/dp/1635575583',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 9',
      'assets/images/squad/david/books/berserkV9.jpg',
      'https://www.amazon.com/Berserk-Deluxe-9-Kentaro-Miura/dp/1506717926',
    ),
    ReadingImageLink(
      'The Anxious Generation',
      'assets/images/squad/david/books/anxiousGen.jpg',
      'https://www.amazon.com/Anxious-Generation-Rewiring-Childhood-Epidemic/dp/0593655036',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 8',
      'assets/images/squad/david/books/berserkV8.jpg',
      'https://www.amazon.com/Berserk-Deluxe-8-Kentaro-Mira/dp/1506717918',
    ),
    ReadingImageLink(
      'This Inevitable Ruin',
      'assets/images/squad/david/books/dcCarl7.jpg',
      'https://www.amazon.com/This-Inevitable-Ruin-Dungeon-Crawler/dp/B0DK29VYL1',
    ),
    ReadingImageLink(
      'Onyx Storm',
      'assets/images/squad/david/books/onyxStorm.jpg',
      'https://www.amazon.com/Onyx-Storm-Deluxe-Limited-Empyrean/dp/1649374186',
    ),
    ReadingImageLink(
      'Perfect Blue',
      'assets/images/squad/david/books/perfectBlue.jpg',
      'https://www.amazon.com/Perfect-Blue-Metamorphosis-Yoshikazu-Takeuchi/dp/162692645X',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 7',
      'assets/images/squad/david/books/berserkV7.jpg',
      'https://www.amazon.com/Berserk-Deluxe-7-Kentaro-Miura/dp/150671790X',
    ),
    ReadingImageLink(
      'Console Wars',
      'assets/images/squad/david/books/consoleWars.jpg',
      'https://www.amazon.com/Console-Wars-Nintendo-Defined-Generation/dp/0062276700',
    ),
    ReadingImageLink(
      'Wind and Truth',
      'assets/images/squad/david/books/windTruth.jpg',
      'https://www.amazon.com/Wind-Truth-Book-Stormlight-Archive/dp/1250319188',
    ),
    ReadingImageLink(
      'Buddha, Vol 1',
      'assets/images/squad/david/books/buddha1.jpg',
      'https://www.amazon.com/Buddha-Vol-Kapilavastu-Osamu-Tezuka/dp/1932234438',
    ),
    ReadingImageLink(
      'Sid Meier\'s Memoir!',
      'assets/images/squad/david/books/sidMeier.jpg',
      'https://www.amazon.com/Sid-Meiers-Memoir-Computer-Games/dp/B08MNG8VX8',
    ),
    ReadingImageLink(
      'Play Nice',
      'assets/images/squad/david/books/playNice.jpg',
      'https://www.amazon.com/Play-Nice-Future-Blizzard-Entertainment/dp/1538725428',
    ),
    ReadingImageLink(
      'The 12th Planet',
      'assets/images/squad/david/books/12thPlanet.jpg',
      'https://www.amazon.com/Twelfth-Planet-Book-Earth-Chronicles/dp/0061379131',
    ),
    ReadingImageLink(
      'Children of Memory',
      'assets/images/squad/david/books/childrenMemory.jpg',
      'https://www.amazon.com/Children-Memory-Adrian-Tchaikovsky/dp/0316466409',
    ),
    ReadingImageLink(
      'Black Holes, Tides, and Curved Spacetime',
      'assets/images/squad/david/books/bhTidesSpacetime.jpg',
      'https://www.amazon.com/Black-Holes-Tides-Curved-Spacetime/dp/1598039857',
    ),
    ReadingImageLink(
      'The Story of Human Language',
      'assets/images/squad/david/books/humanLanguage.jpg',
      'https://www.amazon.com/Story-Human-Language-John-McWhorter/dp/1565859472',
    ),
    ReadingImageLink(
      'Network Effect',
      'assets/images/squad/david/books/networkEffect.jpg',
      'https://www.amazon.com/Network-Effect-Murderbot-Novel-Diaries/dp/1250229863',
    ),
    ReadingImageLink(
      'Exit Strategy',
      'assets/images/squad/david/books/exitStrategy.jpg',
      'https://www.amazon.com/Exit-Strategy-Murderbot-Martha-Wells/dp/1250191858',
    ),
    ReadingImageLink(
      'Rogue Protocol',
      'assets/images/squad/david/books/rogueProtocol.jpg',
      'https://www.amazon.com/Rogue-Protocol-Murderbot-Martha-Wells-ebook/dp/B0756JSWGL',
    ),
    ReadingImageLink(
      'Artificial Condition',
      'assets/images/squad/david/books/artificialCondition.jpg',
      'https://www.amazon.com/Artificial-Condition-Murderbot-Martha-Wells/dp/1250186927',
    ),
    ReadingImageLink(
      'All Systems Red',
      'assets/images/squad/david/books/allSystemsRed.jpg',
      'https://www.amazon.com/All-Systems-Red-Martha-Wells-audiobook/dp/B076X98RLL/',
    ),
    ReadingImageLink(
      'A Court of Thorns and Roses',
      'assets/images/squad/david/books/courtThornsRoses.jpg',
      'https://www.amazon.com/Court-Thorns-Roses-Sarah-Maas/dp/1635575567',
    ),
    ReadingImageLink(
      'Children of Ruin',
      'assets/images/squad/david/books/childrenRuin.jpg',
      'https://www.amazon.com/Children-Ruin-Time-Adrian-Tchaikovsky/dp/031645253X',
    ),
    ReadingImageLink(
      'Not Till We Are Lost',
      'assets/images/squad/david/books/notTillLost.jpg',
      'https://www.amazon.com/Not-Till-Are-Lost-Bobiverse/dp/B0CW2345TV',
    ),
    ReadingImageLink(
      'Iron Flame',
      'assets/images/squad/david/books/ironFlame.jpg',
      'https://www.amazon.com/Iron-Flame-Empyrean-Book-2/dp/B0C9V75P93/',
    ),
    ReadingImageLink(
      'Children of Time',
      'assets/images/squad/david/books/childrenTime.jpg',
      'https://www.amazon.com/Children-Time-Adrian-Tchaikovsky/dp/0316452505',
    ),
    ReadingImageLink(
      'The Egg',
      'assets/images/squad/david/books/egg.jpg',
      'https://www.amazon.com/Egg-Other-Stories-Andy-Weir/dp/1543642721',
    ),
    ReadingImageLink(
      'Kaiju Battlefield Surgeon',
      'assets/images/squad/david/books/kaiju.jpg',
      'https://www.amazon.com/Kaiju-Battlefield-Surgeon-LitRPG-Adventure/dp/B08ZBFFBFB',
    ),
    ReadingImageLink(
      'Queen',
      'assets/images/squad/david/books/queen.jpg',
      'https://www.amazon.com/Queen-Chronicle-Sibyls-Timothy-Zahn/dp/1665239379',
    ),
    ReadingImageLink(
      'Knight',
      'assets/images/squad/david/books/knight.jpg',
      'https://www.amazon.com/Knight-Chronicle-Sibyls-Timothy-Zahn/dp/0765329670',
    ),
    ReadingImageLink(
      'The Eye of the Bedlam Bride',
      'assets/images/squad/david/books/dcCarl6.jpg',
      'https://www.amazon.com/Eye-Bedlam-Bride-Dungeon-Crawler/dp/B0C7T9NK5N',
    ),
    ReadingImageLink(
      'Fourth Wing',
      'assets/images/squad/david/books/fourthWing.jpg',
      'https://www.amazon.com/Fourth-Wing/dp/0349437009',
    ),
    ReadingImageLink(
      'The Butcher\'s Masquerade',
      'assets/images/squad/david/books/dcCarl5.jpg',
      'https://www.amazon.com/Butchers-Masquerade-Dungeon-Crawler-Carl-ebook/dp/B09R6C5X88',
    ),
    ReadingImageLink(
      'Pawn',
      'assets/images/squad/david/books/pawn.jpg',
      'https://www.amazon.com/Pawn-Sibyls-War-Timothy-Zahn/dp/B08XLGJN4K',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 6',
      'assets/images/squad/david/books/berserkV6.jpg',
      'https://www.amazon.com/Berserk-Deluxe-6-Kentaro-Miura/dp/1506715230',
    ),
    ReadingImageLink(
      'The Gate of the Feral Gods',
      'assets/images/squad/david/books/dcCarl4.jpg',
      'https://www.amazon.com/Gate-Feral-Gods-Dungeon-Crawler-ebook/dp/B093DJ7F3C',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 5',
      'assets/images/squad/david/books/berserkV5.jpg',
      'https://www.amazon.com/Berserk-Deluxe-5-Kentaro-Miura/dp/1506715222',
    ),
    ReadingImageLink(
      'Blue Mars',
      'assets/images/squad/david/books/blueMars.jpg',
      'https://www.amazon.com/Blue-Mars-Trilogy-Stanley-Robinson/dp/0593358856',
    ),
    ReadingImageLink(
      'The Dungeon Anarchist\'s Cookbook',
      'assets/images/squad/david/books/dcCarl3.jpg',
      'https://www.amazon.com/Dungeon-Anarchists-Cookbook-Crawler-Carl/dp/B094X214V9',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 4',
      'assets/images/squad/david/books/berserkV4.jpg',
      'https://www.amazon.com/Berserk-Deluxe-4-Kentaro-Miura/dp/1506715214',
    ),
    ReadingImageLink(
      'The Legend of Zelda: Ocarina of Time',
      'assets/images/squad/david/books/zeldaOcarina.jpg',
      'https://www.amazon.com/Legend-Zelda-Ocarina-Legendary-Legendary/dp/1421589591',
    ),
    ReadingImageLink(
      '48 Laws of Power',
      'assets/images/squad/david/books/48Laws.jpg',
      'https://www.amazon.com/48-Laws-of-Power-Robert-Greene-audiobook/dp/B00X0TKUS0',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 3',
      'assets/images/squad/david/books/berserkV3.jpg',
      'https://www.amazon.com/Berserk-Deluxe-3-Kentaro-Miura/dp/1506712002',
    ),
    ReadingImageLink(
      'Green Mars',
      'assets/images/squad/david/books/greenMars.jpg',
      'https://www.amazon.com/Green-Mars-Trilogy-Stanley-Robinson/dp/0553572393',
    ),
    ReadingImageLink(
      'Carl\'s Doomsday Scenario',
      'assets/images/squad/david/books/dcCarl2.jpg',
      'https://www.amazon.com/Carls-Doomsday-Scenario-Dungeon-Crawler/dp/B08RRKNNJZ',
    ),
    ReadingImageLink(
      'Dungeon Crawler Carl',
      'assets/images/squad/david/books/dcCarl.jpg',
      'https://www.amazon.com/Dungeon-Crawler-Carl-Gamelit-Adventure-ebook/dp/B08BKGYQXW',
    ),
    ReadingImageLink(
      'Red Mars',
      'assets/images/squad/david/books/redMars.jpg',
      'https://www.amazon.com/Red-Mars-Trilogy-Stanley-Robinson/dp/0553560735',
    ),
    ReadingImageLink(
      'The Sunlit Man',
      'assets/images/squad/david/books/sunlit.jpg',
      'https://www.amazon.com/Secret-Project-Cosmere-Novel-Projects-ebook/dp/B0BPN84MD5',
    ),
    ReadingImageLink(
      'Yumi and the Nightmare Painter',
      'assets/images/squad/david/books/yumi.jpg',
      'https://www.amazon.com/Yumi-Nightmare-Painter-Brandon-Sanderson/dp/1250899699',
    ),
    ReadingImageLink(
      'The Coddling of the American Mind',
      'assets/images/squad/david/books/coddling.jpg',
      'https://www.amazon.com/Coddling-of-American-Mind-audiobook/dp/B079P7PDWB/',
    ),
    ReadingImageLink(
      'Recursion',
      'assets/images/squad/david/books/recursion.jpg',
      'https://www.amazon.com/Recursion-Blake-Crouch-audiobook/dp/B07N2Y1T8G/',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 2',
      'assets/images/squad/david/books/berserkV2.jpg',
      'https://www.amazon.com/Berserk-Deluxe-2-Kentaro-Miura/dp/1506711995/',
    ),
    ReadingImageLink(
      'Horus Rising',
      'assets/images/squad/david/books/horusRising.jpg',
      'https://www.audible.com/pd/Horus-Rising-Audiobook/B0764LBS4B',
    ),
    ReadingImageLink(
      'The Adventure Zone: Murder on the Rockport Limited!',
      'assets/images/squad/david/books/advZone2.jpg',
      'https://www.amazon.com/Adventure-Zone-Murder-Rockport-Limited/dp/1250153719',
    ),
    ReadingImageLink(
      'Berserk, Deluxe Edition Vol. 1',
      'assets/images/squad/david/books/berserkV1.jpg',
      'https://www.amazon.com/Berserk-Deluxe-1-Kentaro-Miura/dp/1506711987',
    ),
    ReadingImageLink(
      'Leviathan Falls',
      'assets/images/squad/david/books/exp9Leviathan.jpg',
      'https://www.amazon.com/Tiamats-Wrath-Expanse-James-Corey/dp/0316332879',
    ),
    ReadingImageLink(
      'The Adventure Zone: Here There Be Gerblins',
      'assets/images/squad/david/books/advZone1.jpg',
      'https://www.amazon.com/Adventure-Zone-Here-There-Gerblins/dp/1250153700',
    ),
    ReadingImageLink(
      'Tiamat\'s Wrath',
      'assets/images/squad/david/books/exp8Tiamat.jpg',
      'https://www.amazon.com/Tiamats-Wrath-Expanse-James-Corey/dp/0316332879',
    ),
    ReadingImageLink(
      'What\'s Our Problem',
      'assets/images/squad/david/books/whatsProblem.jpg',
      'https://www.amazon.com/Whats-Our-Problem-Self-Help-Societies/dp/B0BVGH6T1Q',
    ),
    ReadingImageLink(
      'Light Bringer',
      'assets/images/squad/david/books/lightbringer.jpg',
      'https://www.amazon.com/Light-Bringer-Red-Rising-Novel-ebook/dp/B0B5Z4RZ2W',
    ),
    ReadingImageLink(
      'Persepolis Rising (The Expanse 7)',
      'assets/images/squad/david/books/exp7Persepolis.jpg',
      'https://www.amazon.com/Persepolis-Rising-Expanse-James-Corey/dp/0316332836',
    ),
    ReadingImageLink(
      'Tomorrow and Tomorrow and Tomorrow',
      'assets/images/squad/david/books/tomorrow.jpg',
      'https://www.amazon.com/Tomorrow-novel-Gabrielle-Zevin/dp/0593321200',
    ),
    ReadingImageLink(
      'Dark Matter',
      'assets/images/squad/david/books/darkMatter.jpg',
      'https://www.amazon.com/Dark-Matter-Novel-Blake-Crouch/dp/1101904240',
    ),
    ReadingImageLink(
      'Tress of the Emerald Sea',
      'assets/images/squad/david/books/tress.jpg',
      'https://www.amazon.com/Tress-Emerald-Sea-Brandon-Sanderson/dp/1250899656',
    ),
    ReadingImageLink(
      'The End of All Things',
      'assets/images/squad/david/books/endThings.jpg',
      'https://www.amazon.com/End-All-Things-Old-Mans/dp/0765376105',
    ),
    ReadingImageLink(
      'Arcanum Unbounded',
      'assets/images/squad/david/books/arcanumUnbounded.jpg',
      'https://www.amazon.com/Arcanum-Unbounded-Collection-Brandon-Sanderson/dp/0765391163',
    ),
    ReadingImageLink(
      'The Human Division',
      'assets/images/squad/david/books/humanDivision.jpg',
      'https://www.amazon.com/Human-Division-Old-Mans-War/dp/0765369559',
    ),
    ReadingImageLink(
      'Illidan: World of Warcraft (A Novel)',
      'assets/images/squad/david/books/illidan.jpg',
      'https://www.amazon.com/Illidan-World-Warcraft-William-King/dp/0399177574',
    ),
    ReadingImageLink(
      'The Lost Metal',
      'assets/images/squad/david/books/lostMetal.jpg',
      'https://www.amazon.com/Lost-Metal-Mistborn-Novel-Saga/dp/0765391198',
    ),
    ReadingImageLink(
      'The Bands of Mourning',
      'assets/images/squad/david/books/bandsMourning.jpg',
      'https://www.amazon.com/Bands-Mourning-Mistborn-Novel-ebook/dp/B00R697BC8',
    ),
    ReadingImageLink(
      'Babylon\'s Ashes (The Expanse 6)',
      'assets/images/squad/david/books/exp6Babylons.jpg',
      'https://www.amazon.com/Babylons-Ashes-Expanse-James-Corey/dp/031633474X',
    ),
    ReadingImageLink(
      'Shadows of Self',
      'assets/images/squad/david/books/shadowsSelf.jpg',
      'https://www.amazon.com/Shadows-Self-Mistborn-Brandon-Sanderson/dp/0765378566',
    ),
    ReadingImageLink(
      'The Alloy of Law',
      'assets/images/squad/david/books/alloyLaw.jpg',
      'https://www.amazon.com/Alloy-Law-Mistborn-Novel/dp/0765368544',
    ),
    ReadingImageLink(
      'Zoe\'s Tale',
      'assets/images/squad/david/books/zoesTale.jpg',
      'https://www.amazon.com/Zoes-Tale-Old-Mans-Novel/dp/0765356198',
    ),
    ReadingImageLink(
      'Nemesis Games (The Expanse 5)',
      'assets/images/squad/david/books/exp5Nemesis.jpg',
      'https://www.amazon.com/Nemesis-Games-Expanse-James-Corey/dp/0316334715',
    ),
    ReadingImageLink(
      'The Last Colony',
      'assets/images/squad/david/books/lastColony.jpg',
      'https://www.amazon.com/Last-Colony-Old-Mans-War/dp/076535618X',
    ),
    ReadingImageLink(
      'Roadkill',
      'assets/images/squad/david/books/roadkill.jpg',
      'https://www.amazon.com/Audible-Roadkill/dp/B0B6Q8TW1Y',
    ),
    ReadingImageLink(
      'Elantris',
      'assets/images/squad/david/books/elantris.jpg',
      'https://www.amazon.com/Elantris-Brandon-Sanderson/dp/0765350378',
    ),
    ReadingImageLink(
      'Brain Myths Exploded: Lessons from Neuroscience',
      'assets/images/squad/david/books/brainMythNeuro.jpg',
      'https://www.amazon.com/Brain-Myths-Exploded-Lessons-Neuroscience/dp/162997370X',
    ),
    ReadingImageLink(
      'Warbreaker',
      'assets/images/squad/david/books/warbreaker.jpg',
      'https://www.amazon.com/Warbreaker-Brandon-Sanderson/dp/0765360039',
    ),
    ReadingImageLink(
      'Cibola Burn (The Expanse 4)',
      'assets/images/squad/david/books/exp4Cibola.jpg',
      'https://www.amazon.com/Cibola-Burn-Expanse-Book-4-ebook/dp/B00FPQA4F0',
    ),
    ReadingImageLink(
      'The DevOps Handbook, 2nd Ed.',
      'assets/images/squad/david/books/devOps.jpg',
      'https://www.amazon.com/DevOps-Handbook-Second-World-Class-Organizations/dp/B09L56CT6N',
    ),
    ReadingImageLink(
      'The Sandman: Act III',
      'assets/images/squad/david/books/sandman3.jpg',
      'https://www.audible.com/pd/The-Sandman-Act-III-Audiobook/B0BFK1K36D',
    ),
    ReadingImageLink(
      'The Ghost Brigades',
      'assets/images/squad/david/books/ghostBrigades.jpg',
      'https://www.amazon.com/Ghost-Brigades-Old-Mans-War/dp/0765354063',
    ),
    ReadingImageLink(
      'Mistborn: The Hero of Ages',
      'assets/images/squad/david/books/mistborn3.jpg',
      'https://www.amazon.com/Hero-Ages-Book-Three-Mistborn-ebook/dp/B002LC8HF0',
    ),
    ReadingImageLink(
      'Mistborn: The Well of Ascension',
      'assets/images/squad/david/books/mistborn2.jpg',
      'https://www.amazon.com/Well-Ascension-Book-Two-Mistborn-ebook/dp/B000UZQI0Q',
    ),
    ReadingImageLink(
      'Mistborn: The Final Empire',
      'assets/images/squad/david/books/mistborn1.jpg',
      'https://www.amazon.com/Mistborn-Final-Empire-Book-No/dp/0765350386',
    ),
    ReadingImageLink(
      'The Rise of Superman',
      'assets/images/squad/david/books/superman.jpg',
      'https://www.amazon.com/Rise-Superman-Decoding-Ultimate-Performance-ebook/dp/B00BW54XVO',
    ),
    ReadingImageLink(
      'Edgedancer',
      'assets/images/squad/david/books/edgedancer.jpg',
      'https://www.amazon.com/Edgedancer-Stormlight-Archive-Brandon-Sanderson-ebook/dp/B06XRHRHPH',
    ),
    ReadingImageLink(
      'Abaddon\'s Gate (The Expanse 3)',
      'assets/images/squad/david/books/exp3Abaddon.jpg',
      'https://www.amazon.com/Abaddons-Gate-Expanse-James-Corey/dp/0316129070',
    ),
    ReadingImageLink(
      'Old Man\'s War',
      'assets/images/squad/david/books/oldManWar.jpg',
      'https://www.amazon.com/Old-Mans-War-John-Scalzi/dp/0765348276',
    ),
    ReadingImageLink(
      'Why We Sleep',
      'assets/images/squad/david/books/whySleep.jpg',
      'https://www.amazon.com/Why-We-Sleep-Matthew-Walker-audiobook/dp/B0752XRB5F',
    ),
    ReadingImageLink(
      'Caliban\'s War (The Expanse 2)',
      'assets/images/squad/david/books/exp2Caliban.jpg',
      'https://www.amazon.com/Calibans-War-Expanse-James-Corey/dp/0316129062',
    ),
    ReadingImageLink(
      'World of Warcraft: Arthas - Rise of the Lich King',
      'assets/images/squad/david/books/arthas.jpg',
      'https://www.amazon.com/World-Warcraft-Arthas-Blizzard-Legends/dp/B07P1B1RBP',
    ),
    ReadingImageLink(
      'Rhythm of War',
      'assets/images/squad/david/books/rhythmWar.jpg',
      'https://www.amazon.com/Rhythm-of-War/dp/B082FQRWWR',
    ),
    ReadingImageLink(
      'Dawnshard',
      'assets/images/squad/david/books/dawnshard.jpg',
      'https://www.amazon.com/Dawnshard-Stormlight-Archive-Brandon-Sanderson-ebook/dp/B08MXXWYT7',
    ),
    ReadingImageLink(
      'Bakemonogatari 2',
      'assets/images/squad/david/books/bakemonogatari2.jpg',
      'https://www.amazon.com/BAKEMONOGATARI-Part-2-Monster-Tale/dp/1942993897',
    ),
    ReadingImageLink(
      'Immune',
      'assets/images/squad/david/books/immune.jpg',
      'https://www.amazon.com/Immune-Journey-Mysterious-System-Keeps/dp/0593241312',
    ),
    ReadingImageLink(
      'Oathbringer',
      'assets/images/squad/david/books/oathbringer.jpg',
      'https://www.amazon.com/Oathbringer-Book-Three-Stormlight-Archive/dp/076532637X',
    ),
    ReadingImageLink(
      'Words of Radiance',
      'assets/images/squad/david/books/wordsRadiance.jpg',
      'https://www.amazon.com/Words-Radiance-Stormlight-Archive-Book/dp/0765326361',
    ),
    ReadingImageLink(
      'Leviathan Wakes (The Expanse 1)',
      'assets/images/squad/david/books/exp1Leviathan.jpg',
      'https://www.amazon.com/Leviathan-Wakes-Expanse-Book-1-ebook/dp/B0047Y171G',
    ),
    ReadingImageLink(
      'Bakemonogatari 1',
      'assets/images/squad/david/books/bakemonogatari1.jpg',
      'https://www.amazon.com/BAKEMONOGATARI-1-Illustrated-VOFAN-NISIOISIN-ebook/dp/B07SGG2ZC4',
    ),
    ReadingImageLink(
      'The Way of Kings',
      'assets/images/squad/david/books/wayOfKings.jpg',
      'https://www.amazon.com/Way-Kings-Brandon-Sanderson/dp/0765365278',
    ),
    ReadingImageLink(
      'The Sandman: Act II',
      'assets/images/squad/david/books/sandman2.jpg',
      'https://www.amazon.com/Audible-The-Sandman-Act-II/dp/B098TWBMJ6',
    ),
    ReadingImageLink(
      'The Sandman',
      'assets/images/squad/david/books/sandman.jpg',
      'https://www.amazon.com/The-Sandman/dp/B086WQ7J62',
    ),
    ReadingImageLink(
      'Stillness is the Key',
      'assets/images/squad/david/books/stillness.jpg',
      'https://www.amazon.com/Stillness-Key-Ryan-Holiday/dp/0525538585',
    ),
    ReadingImageLink(
      'Dark Age',
      'assets/images/squad/david/books/darkAge.jpg',
      'https://www.amazon.com/Dark-Age-Book-Rising-Saga/dp/0425285944',
    ),
    ReadingImageLink(
      'Iron Gold',
      'assets/images/squad/david/books/ironGold.jpg',
      'https://www.amazon.com/Iron-Gold-explosive-novel-Rising/dp/147364657X',
    ),
    ReadingImageLink(
      'Morning Star',
      'assets/images/squad/david/books/morningStar.jpg',
      'https://www.amazon.com/Morning-Star-Book-Rising-Saga/dp/0345539842',
    ),
    ReadingImageLink(
      'Golden Sun',
      'assets/images/squad/david/books/goldenSun.jpg',
      'https://www.amazon.com/Golden-Son-Book-Rising-Saga/dp/0345539834',
    ),
    ReadingImageLink(
      'Red Rising',
      'assets/images/squad/david/books/redRising.jpg',
      'https://www.amazon.com/Red-Rising-Pierce-Brown/dp/034553980X',
    ),
    ReadingImageLink(
      'Thrawn Ascendency: Lesser Evil',
      'assets/images/squad/david/books/thrawnAscendancy3.jpg',
      'https://www.amazon.com/Star-Wars-Thrawn-Ascendancy-Lesser/dp/B08ZDSJPHZ/',
    ),
    ReadingImageLink(
      'A People\'s History of the United States',
      'assets/images/squad/david/books/peoplesHistory.jpg',
      'https://www.amazon.com/Peoples-History-United-States/dp/0060838655',
    ),
    ReadingImageLink(
      'Thrawn Ascendency: Greater Good',
      'assets/images/squad/david/books/thrawnAscendancy2.jpg',
      'https://www.amazon.com/Star-Wars-Ascendancy-Greater-Trilogy-ebook/dp/B08KPJW7L9/',
    ),
    ReadingImageLink(
      'Thrawn Treason',
      'assets/images/squad/david/books/thrawnTreason.jpg',
      'https://www.amazon.com/Thrawn-Treason-Star-Wars/dp/1984820982',
    ),
    ReadingImageLink(
      'America Again: Re-becoming the Greatness We Never Weren\'t',
      'assets/images/squad/david/books/americaAgain.jpg',
      'https://www.amazon.com/America-Again-Re-becoming-Greatness-Werent/dp/B01L9GHFIS',
    ),
    ReadingImageLink(
      'Thrawn: Alliances',
      'assets/images/squad/david/books/thrawnAlliances.jpg',
      'https://www.amazon.com/Thrawn-Alliances-Star-Wars/dp/052548048X',
    ),
    ReadingImageLink(
      'Genghis Khan and the Making of the Modern World',
      'assets/images/squad/david/books/genghisKhan.jpg',
      'https://www.amazon.com/Genghis-Khan-Making-Modern-World/dp/1491513705',
    ),
    ReadingImageLink(
      'Clean: The New Science of Skin',
      'assets/images/squad/david/books/clean.jpg',
      'https://www.amazon.com/Clean-New-Science-Skin/dp/B082MTCYYR',
    ),
    ReadingImageLink(
      'Thrawn Ascendency: Chaos Rising',
      'assets/images/squad/david/books/thrawnAscendancy1.jpg',
      'https://www.amazon.com/Star-Wars-Thrawn-Ascendancy-Trilogy/dp/0593157680',
    ),
    ReadingImageLink(
      'Thrawn',
      'assets/images/squad/david/books/thrawn.jpg',
      'https://www.amazon.com/Thrawn-Star-Wars/dp/1101967021',
    ),
    ReadingImageLink(
      'Ready Player 2',
      'assets/images/squad/david/books/readyP2.jpg',
      'https://www.amazon.com/Ready-Player-Two-Ernest-Cline/dp/1524761338',
    ),
    ReadingImageLink(
      'Hail Mary',
      'assets/images/squad/david/books/hailMary.jpg',
      'https://www.audible.com/pd/Project-Hail-Mary-Audiobook/B08G9PRS1K',
    ),
    ReadingImageLink(
      'Never Split the Difference',
      'assets/images/squad/david/books/neverSplit.jpg',
      'https://www.amazon.com/Never-Split-Difference-Negotiating-Depended/dp/0062407805',
    ),
    ReadingImageLink(
      'Lords of the Sith',
      'assets/images/squad/david/books/lordsSith.jpg',
      'https://www.amazon.com/Lords-of-Sith-Star-Wars-audiobook/dp/B00VRSEEAG/',
    ),
    ReadingImageLink(
      'The Psychology of Zelda',
      'assets/images/squad/david/books/psychZelda.jpg',
      'https://www.amazon.com/Psychology-Zelda-Linking-World-Legend/dp/1946885347',
    ),
    ReadingImageLink(
      'The Lean Startup',
      'assets/images/squad/david/books/leanStartup.jpg',
      'https://www.amazon.com/Lean-Startup-Entrepreneurs-Continuous-Innovation/dp/0307887898',
    ),
    ReadingImageLink(
      'Heaven\'s River',
      'assets/images/squad/david/books/heavensRiver.jpg',
      'https://www.amazon.com/Heavens-River-Bobiverse-Book-4/dp/B088C51F5H',
    ),
    ReadingImageLink(
      'All These Worlds',
      'assets/images/squad/david/books/allWorlds.jpg',
      'https://www.amazon.com/All-These-Worlds-Bobiverse-Book-ebook/dp/B0736185ZL',
    ),
    ReadingImageLink(
      'For We Are Many',
      'assets/images/squad/david/books/weMany.jpg',
      'https://www.amazon.com/We-Are-Many-Bobiverse-Book-ebook/dp/B01MZI77C0',
    ),
    ReadingImageLink(
      'We Are Legion (We Are Bob)',
      'assets/images/squad/david/books/weBob.jpg',
      'https://www.amazon.com/Are-Legion-Bob-Bobiverse-Book-ebook/dp/B01LWAESYQ',
    ),
    ReadingImageLink(
      'Change Agent',
      'assets/images/squad/david/books/change.jpg',
      'https://www.amazon.com/Change-Agent-Daniel-Suarez/dp/110198466X',
    ),
    ReadingImageLink(
      'Good Calories, Bad Calories',
      'assets/images/squad/david/books/calories.jpg',
      'https://www.amazon.com/Good-Calories-Bad-Controversial-Science/dp/1400033462',
    ),
    ReadingImageLink(
      'The Stone Sky',
      'assets/images/squad/david/books/stoneSky.jpg',
      'https://www.amazon.com/Stone-Sky-Broken-Earth-Book-ebook/dp/B01N7EQOFA',
    ),
    ReadingImageLink(
      'The Obelisk Gate',
      'assets/images/squad/david/books/obeliskGate.jpg',
      'https://www.amazon.com/Obelisk-Gate-Broken-Earth/dp/0316229261',
    ),
    ReadingImageLink(
      'The Fifth Season',
      'assets/images/squad/david/books/fifthSeason.jpg',
      'https://www.amazon.com/Fifth-Season-Broken-Earth/dp/0316229296',
    ),
    ReadingImageLink(
      'Freedom',
      'assets/images/squad/david/books/freedom.jpg',
      'https://www.amazon.com/Freedom-TM-Daemon-Daniel-Suarez/dp/0451231899',
    ),
    ReadingImageLink(
      'Daemon',
      'assets/images/squad/david/books/daemon.jpg',
      'https://www.amazon.com/DAEMON-Daemon-Daniel-Suarez/dp/0451228731',
    ),
    ReadingImageLink(
      'Sex, Drugs, Violence and the Bible',
      'assets/images/squad/david/books/sdvBible.jpg',
      'https://www.amazon.com/Drugs-Violence-Bible-Chris-Bennett/dp/1550567985',
    ),
    ReadingImageLink(
      'Watchmen',
      'assets/images/squad/david/books/watchmen.jpg',
      'https://www.amazon.com/Watchmen-Alan-Moore/dp/0930289234',
    ),
    ReadingImageLink(
      'Generation Kill',
      'assets/images/squad/david/books/generationKill.jpg',
      'https://www.amazon.com/Generation-Kill-Captain-America-American/dp/0425224740/',
    ),
    ReadingImageLink(
      'The Mueller Report',
      'assets/images/squad/david/books/mueller.jpg',
      'https://www.audible.com/pd/The-Mueller-Report-Audiobook/B07PXN468K',
    ),
    ReadingImageLink(
      'Sapiens',
      'assets/images/squad/david/books/sapiens.jpg',
      'https://www.amazon.com/Sapiens-Humankind-Yuval-Noah-Harari/dp/0062316095',
    ),
    ReadingImageLink(
      'Red Notice',
      'assets/images/squad/david/books/redNotice.jpg',
      'https://www.amazon.com/Red-Notice-Finance-Murder-Justice/dp/1476755744',
    ),
    ReadingImageLink(
      'Hokkaido Highway Blues',
      'assets/images/squad/david/books/hokkaido.jpg',
      'https://www.amazon.com/Hokkaido-Highway-Blues-Hitchhiking-Japan/dp/1841952885/',
    ),
    ReadingImageLink(
      'Ready Player One',
      'assets/images/squad/david/books/readyPlayer.jpg',
      'https://www.amazon.com/Ready-Player-One-Ernest-Cline/dp/0307887448',
    ),
    ReadingImageLink(
      'The World of Ice & Fire',
      'assets/images/squad/david/books/iceFire.jpg',
      'https://www.amazon.com/World-Ice-Fire-History-Westeros/dp/0553805444',
    ),
    ReadingImageLink(
      'The World is Fat',
      'assets/images/squad/david/books/worldFat.jpg',
      'https://www.amazon.com/World-Fat-Policies-Products-Fattening/dp/1583333819',
    ),
    ReadingImageLink(
      'Food Rules',
      'assets/images/squad/david/books/foodRules.jpg',
      'https://www.amazon.com/Food-Rules-Eaters-Michael-Pollan/dp/014311638X',
    ),
    ReadingImageLink(
      'The Real Food Revolution',
      'assets/images/squad/david/books/realFood.jpg',
      'https://www.amazon.com/Real-Food-Revolution-Groceries-American/dp/1401946402',
    ),
    ReadingImageLink(
      'Subliminal',
      'assets/images/squad/david/books/subliminal.jpg',
      'https://www.amazon.com/Subliminal-Your-Unconscious-Rules-Behavior/dp/0307472256/',
    ),
    ReadingImageLink(
      'The Game Believes in You',
      'assets/images/squad/david/books/gameBelieves.jpg',
      'https://www.amazon.com/Game-Believes-You-Digital-Smarter/dp/1137279575/',
    ),
    ReadingImageLink(
      'Self Comes to Mind',
      'assets/images/squad/david/books/self.jpg',
      'https://www.amazon.com/Self-Comes-Mind-Constructing-Conscious/dp/030747495X/',
    ),
    ReadingImageLink(
      'Thinking, Fast and Slow',
      'assets/images/squad/david/books/thinking.jpg',
      'https://www.amazon.com/Thinking-Fast-Slow-Daniel-Kahneman/dp/0374533555',
    ),
    ReadingImageLink(
      'The Power of Habit',
      'assets/images/squad/david/books/habit.jpg',
      'https://www.amazon.com/Power-Habit-What-Life-Business/dp/081298160X',
    ),
    ReadingImageLink(
      'Wisdom',
      'assets/images/squad/david/books/wisdom.jpg',
      'https://www.amazon.com/Wisdom-Philosophy-Neuroscience-Stephen-Hall/dp/0307389685',
    ),
    ReadingImageLink(
      'Animal Farm',
      'assets/images/squad/david/books/animal.jpg',
      'https://www.amazon.com/Animal-Farm-Anniversary-George-Orwell/dp/0451526341',
    ),
    ReadingImageLink(
      'The Man Who Folded Himself',
      'assets/images/squad/david/books/folded.jpg',
      'https://www.amazon.com/Man-Who-Folded-Himself/dp/1932100040',
    ),
    ReadingImageLink(
      'Beyond Boundaries',
      'assets/images/squad/david/books/beyond.jpg',
      'https://www.amazon.com/Beyond-Boundaries-Neuroscience-Connecting-Machines---/dp/1250002613/',
    ),
    ReadingImageLink(
      'Nonzero',
      'assets/images/squad/david/books/nonzero.jpg',
      'https://www.amazon.com/Nonzero-Logic-Destiny-Robert-Wright/dp/0679758941/',
    ),
    ReadingImageLink(
      'Drop Dead Healthy',
      'assets/images/squad/david/books/healthy.jpg',
      'https://www.amazon.com/Drop-Dead-Healthy-Humble-Perfection/dp/1416599088/',
    ),
    ReadingImageLink(
      'Einstein',
      'assets/images/squad/david/books/einstein.jpg',
      'https://www.amazon.com/Einstein-Life-Universe-Walter-Isaacson/dp/1442348062',
    ),
    ReadingImageLink(
      'I Am America (And So Can You)',
      'assets/images/squad/david/books/colbert.jpg',
      'https://www.amazon.com/Am-America-And-Can-You/dp/0446582182',
    ),
    ReadingImageLink(
      'Code',
      'assets/images/squad/david/books/code.jpg',
      'https://www.amazon.com/Code-Language-Computer-Hardware-Software/dp/0735611319',
    ),
    ReadingImageLink(
      'America the Strong',
      'assets/images/squad/david/books/america.jpg',
      'https://www.amazon.com/America-Strong-Conservative-Ideas-Generation/dp/1496405935',
    ),
    ReadingImageLink(
      'The Martian',
      'assets/images/squad/david/books/martian.jpg',
      'https://www.amazon.com/Martian-Andy-Weir/dp/0553418025',
    ),
    ReadingImageLink(
      'Drive',
      'assets/images/squad/david/books/drive.jpg',
      'https://www.amazon.com/Drive-Surprising-Truth-About-Motivates/dp/1594484805',
    ),
    ReadingImageLink(
      '1776',
      'assets/images/squad/david/books/1776.jpg',
      'https://www.amazon.com/1776-David-McCullough/dp/0743226720',
    ),
    ReadingImageLink(
      'Man, Play and Games',
      'assets/images/squad/david/books/manPlay.jpg',
      'https://www.amazon.com/Man-Play-Games-Roger-Caillois/dp/025207033X',
    ),
    ReadingImageLink(
      'Neighbors and Wise Men',
      'assets/images/squad/david/books/neighbors.jpg',
      'https://www.amazon.com/Neighbors-Wise-Men-Encounters-Unexpected/dp/B00BJZGRGG',
    ),
    ReadingImageLink(
      'Beyond the 120 Year Diet',
      'assets/images/squad/david/books/120year.jpg',
      'https://www.amazon.com/Beyond-120-Year-Diet-Double/dp/1568581572',
    ),
    ReadingImageLink(
      'Killing Kennedy',
      'assets/images/squad/david/books/killingKennedy.jpg',
      'https://www.amazon.com/Killing-Kennedy-The-End-Camelot/dp/1427226849',
    ),
    ReadingImageLink(
      'I Hope They Serve Beer in Hell',
      'assets/images/squad/david/books/beerHell.jpg',
      'https://www.amazon.com/Hope-They-Serve-Beer-Hell/dp/0806532254',
    ),
    ReadingImageLink(
      'Minds Online',
      'assets/images/squad/david/books/mindsOnline.jpg',
      'https://www.amazon.com/Minds-Online-Teaching-Effectively-Technology/dp/067436824X',
    ),
    ReadingImageLink(
      'The Boys in the Boat',
      'assets/images/squad/david/books/boysBoat.jpg',
      'https://www.amazon.com/Boys-Boat-Americans-Berlin-Olympics/dp/0143125478',
    ),
    ReadingImageLink(
      'Guns, Germs, and Steel',
      'assets/images/squad/david/books/gunsGerms.jpg',
      'https://www.amazon.com/Guns-Germs-Steel-Fates-Societies/dp/0393317552',
    ),
    ReadingImageLink(
      'One Second After',
      'assets/images/squad/david/books/oneSecond.jpg',
      'https://www.amazon.com/One-Second-After-William-Forstchen/dp/0765356864',
    ),
    ReadingImageLink(
      'The Design of Everyday Things',
      'assets/images/squad/david/books/designThings.jpg',
      'https://www.amazon.com/Design-Everyday-Things-Donald-Norman/dp/0465067107',
    ),
    ReadingImageLink(
      'The Gamification of Learning and Instruction',
      'assets/images/squad/david/books/gamificationLearning.jpg',
      'https://www.amazon.com/Gamification-Learning-Instruction-Game-based-Strategies/dp/1118096347',
    ),
    ReadingImageLink(
      'Cooked',
      'assets/images/squad/david/books/cooked.jpg',
      'https://www.amazon.com/Cooked-Natural-Transformation-Michael-Pollan/dp/0143125338',
    ),
    ReadingImageLink(
      'The Story of Muhammed',
      'assets/images/squad/david/books/storyMuhammed.jpg',
      'https://www.amazon.com/Story-Mohammed-Islam-Unveiled/dp/1496019334',
    ),
    ReadingImageLink(
      'Incognito',
      'assets/images/squad/david/books/incognito.jpg',
      'https://www.amazon.com/Incognito-Secret-Lives-David-Eagleman/dp/0307389928',
    ),
    ReadingImageLink(
      'The Alchemist',
      'assets/images/squad/david/books/alchemist.jpg',
      'https://www.amazon.com/Alchemist-Graphic-Novel-Paulo-Coelho/dp/0062024329',
    ),
    ReadingImageLink(
      'Spontaneous Evolution',
      'assets/images/squad/david/books/spontaneousEvolution.jpg',
      'https://www.amazon.com/Spontaneous-Evolution-Positive-Future-There/dp/1401926312',
    ),
    ReadingImageLink(
      'A Dance With Dragons',
      'assets/images/squad/david/books/danceDragons.jpg',
      'https://www.amazon.com/Dance-Dragons-Song-Ice-Fire/dp/0553582011',
    ),
    ReadingImageLink(
      'David and Goliath',
      'assets/images/squad/david/books/davidGoliath.jpg',
      'https://www.amazon.com/David-Goliath-Underdogs-Misfits-Battling/dp/0316204374',
    ),
    ReadingImageLink(
      'A Feast for Crows',
      'assets/images/squad/david/books/feastCrows.jpg',
      'https://www.amazon.com/Feast-Crows-Song-Fire-Thrones/dp/055358202X',
    ),
    ReadingImageLink(
      'Flow',
      'assets/images/squad/david/books/flow.jpg',
      'https://www.amazon.com/Flow-Psychology-Experience-Perennial-Classics/dp/0061339202',
    ),
    ReadingImageLink(
      'A Storm of Swords',
      'assets/images/squad/david/books/stormSwords.jpg',
      'https://www.amazon.com/Storm-Swords-Song-Fire-Book/dp/055357342X',
    ),
    ReadingImageLink(
      'The Intelligibility of Nature',
      'assets/images/squad/david/books/intelNature.jpg',
      'https://www.amazon.com/Intelligibility-Nature-Science-Makes-science-culture/dp/0226139492',
    ),
    ReadingImageLink(
      'A Clash of Kings',
      'assets/images/squad/david/books/clashKings.jpg',
      'https://www.amazon.com/Clash-Kings-Song-Fire-Book/dp/0553579908',
    ),
    ReadingImageLink(
      'Vehicles',
      'assets/images/squad/david/books/vehicles.jpg',
      'https://www.amazon.com/Vehicles-Experiments-Psychology-Valentino-Braitenberg/dp/0262521121',
    ),
    ReadingImageLink(
      'A Game of Thrones',
      'assets/images/squad/david/books/gameThrones.jpg',
      'https://www.amazon.com/Game-Thrones-Song-Fire-Book/dp/0553593714',
    ),
    ReadingImageLink(
      'The Compass of Pleasure',
      'assets/images/squad/david/books/compassPleasure.jpg',
      'https://www.amazon.com/Compass-Pleasure-Exercise-Marijuana-Generosity/dp/0143120751',
    ),
    ReadingImageLink(
      'The Selfish Gene',
      'assets/images/squad/david/books/selfishGene.jpg',
      'https://www.amazon.com/Selfish-Gene-Anniversary----Introduction/dp/0199291152',
    ),
    ReadingImageLink(
      'My Stroke of Insight',
      'assets/images/squad/david/books/strokeInsight.jpg',
      'https://www.amazon.com/My-Stroke-Insight-Scientists-Personal/dp/0452295548',
    ),
    ReadingImageLink(
      'Game Frame',
      'assets/images/squad/david/books/gameFrame.jpg',
      'https://www.amazon.com/Game-Frame-Using-Strategy-Success/dp/1451611064',
    ),
    ReadingImageLink(
      'Super Freakonomics',
      'assets/images/squad/david/books/superFreak.jpg',
      'https://www.amazon.com/SuperFreakonomics-Cooling-Patriotic-Prostitutes-Insurance/dp/0060889586',
    ),
    ReadingImageLink(
      'Nausea',
      'assets/images/squad/david/books/nausea.jpg',
      'https://www.amazon.com/Nausea-Directions-Paperbook-Jean-Paul-Sartre/dp/0811220303',
    ),
    ReadingImageLink(
      'Into Thin Air',
      'assets/images/squad/david/books/thinAir.jpg',
      'https://www.amazon.com/Into-Thin-Air-Personal-Disaster/dp/0385494785',
    ),
    ReadingImageLink(
      'A Brief History of Time',
      'assets/images/squad/david/books/historyTime.jpg',
      'https://www.amazon.com/Brief-History-Time-Stephen-Hawking/dp/0553380168',
    ),
    ReadingImageLink(
      'Engineering Play',
      'assets/images/squad/david/books/engineeringPlay.jpg',
      'https://www.amazon.com/Engineering-Play-Childrens-Catherine-Foundation/dp/0262517388',
    ),
    ReadingImageLink(
      'In Search of Schrodinger\'s Cat',
      'assets/images/squad/david/books/searchSchrodinger.jpg',
      'https://www.amazon.com/Search-Schr%C3%B6dingers-Cat-Quantum-Physics/dp/0553342533',
    ),
    ReadingImageLink(
      'The Sunset Limited',
      'assets/images/squad/david/books/sunsetLimited.jpg',
      'https://www.amazon.com/Sunset-Limited-Novel-Dramatic-Form/dp/0307278360',
    ),
    ReadingImageLink(
      'Understanding Comics',
      'assets/images/squad/david/books/comics.jpg',
      'https://www.amazon.com/Understanding-Comics-Invisible-Scott-McCloud/dp/006097625X',
    ),
    ReadingImageLink(
      'The Secret',
      'assets/images/squad/david/books/secret.jpg',
      'https://www.amazon.com/Secret-Rhonda-Byrne/dp/1582701709',
    ),
    ReadingImageLink(
      'Imagine',
      'assets/images/squad/david/books/imagine.jpg',
      'https://www.amazon.com/Imagine-Creativity-Works-Jonah-Lehrer/dp/B007QRI1UQ',
    ),
    ReadingImageLink(
      'Mindsight',
      'assets/images/squad/david/books/mindsight.jpg',
      'https://www.amazon.com/Mindsight-New-Science-Personal-Transformation/dp/0553386395',
    ),
    ReadingImageLink(
      'Program or Be Programmed',
      'assets/images/squad/david/books/programProgrammed.jpg',
      'https://www.amazon.com/Program-Be-Programmed-Commands-Digital/dp/159376426X',
    ),
    ReadingImageLink(
      'The Prodigal God',
      'assets/images/squad/david/books/prodigalGod.jpg',
      'https://www.amazon.com/Prodigal-God-Timothy-Keller/dp/1594484023',
    ),
    ReadingImageLink(
      'Freakonomics',
      'assets/images/squad/david/books/freakonomics.jpg',
      'https://www.amazon.com/Freakonomics-Economist-Explores-Hidden-Everything/dp/0060731338',
    ),
    ReadingImageLink(
      'Heaven is for Real',
      'assets/images/squad/david/books/heavenReal.jpg',
      'https://www.amazon.com/Heaven-Real-Little-Astounding-Story/dp/0849946158',
    ),
    ReadingImageLink(
      'Reality is Broken',
      'assets/images/squad/david/books/realityBroken.jpg',
      'https://www.amazon.com/Reality-Broken-Better-McGonigal-Hardcover/dp/B00BQ1YTA4',
    ),
    ReadingImageLink(
      'Blink',
      'assets/images/squad/david/books/blink.jpg',
      'https://www.amazon.com/Blink-Power-Thinking-Without/dp/0316010669',
    ),
    ReadingImageLink(
      'The Beak of the Finch',
      'assets/images/squad/david/books/beakFinch.jpg',
      'https://www.amazon.com/Beak-Finch-Story-Evolution-Time/dp/067973337X',
    ),
    ReadingImageLink(
      'Dune',
      'assets/images/squad/david/books/dune.jpg',
      'https://www.amazon.com/Dune-Frank-Herbert/dp/0441172717',
    ),
    ReadingImageLink(
      'The Art of Happiness',
      'assets/images/squad/david/books/artHappiness.jpg',
      'https://www.amazon.com/Art-Happiness-10th-Anniversary-Handbook-ebook/dp/B002UK6NO0',
    ),
    ReadingImageLink(
      'The Art of War',
      'assets/images/squad/david/books/artWar.jpg',
      'https://www.amazon.com/Art-War-Sun-Tzu/dp/1599869772',
    ),
    ReadingImageLink(
      'Decoded',
      'assets/images/squad/david/books/decoded.jpg',
      'https://www.amazon.com/Decoded-Jay-Z/dp/1400068924',
    ),
    ReadingImageLink(
      'Earth',
      'assets/images/squad/david/books/earth.jpg',
      'https://www.amazon.com/Daily-Show-Stewart-Presents-Earth/dp/044657922X',
    ),
    ReadingImageLink(
      'The Double Helix',
      'assets/images/squad/david/books/doubleHelix.jpg',
      'https://www.amazon.com/Double-Helix-Personal-Discovery-Structure/dp/074321630X',
    ),
    ReadingImageLink(
      'Outliers',
      'assets/images/squad/david/books/outliers.jpg',
      'https://www.amazon.com/Outliers-Story-Success-Malcolm-Gladwell/dp/0316017930',
    ),
    ReadingImageLink(
      'The Tipping Point',
      'assets/images/squad/david/books/tippingPoint.jpg',
      'https://www.amazon.com/Tipping-Point-Little-Things-Difference/dp/0316346624',
    ),
    ReadingImageLink(
      'The Omnivore\'s Dilemma',
      'assets/images/squad/david/books/omnivoreDilemma.jpg',
      'https://www.amazon.com/Omnivores-Dilemma-Secrets-Behind-Readers/dp/0803735006',
    ),
    ReadingImageLink(
      'Shadow of the Giant',
      'assets/images/squad/david/books/shadowGiant.jpg',
      'https://www.amazon.com/Shadow-Giant-Orson-Scott-Card/dp/0812571398',
    ),
    ReadingImageLink(
      'Shadow Puppets',
      'assets/images/squad/david/books/shadowPuppets.jpg',
      'https://www.amazon.com/Shadow-Puppets-Orson-Scott-Card/dp/0765340054',
    ),
    ReadingImageLink(
      'Shadow of the Hegemon',
      'assets/images/squad/david/books/shadowHegemon.jpg',
      'https://www.amazon.com/Shadow-Hegemon-Orson-Scott-Card/dp/0812565959',
    ),
    ReadingImageLink(
      'Ender\'s Shadow',
      'assets/images/squad/david/books/enderShadow.jpg',
      'https://www.amazon.com/Enders-Shadow-Orson-Scott-Card/dp/0812575717',
    ),
    ReadingImageLink(
      'Children of the Mind',
      'assets/images/squad/david/books/childrenMind.jpg',
      'https://www.amazon.com/Children-Ender-Quintet-Orson-Scott/dp/0812522397',
    ),
    ReadingImageLink(
      'Xenocide',
      'assets/images/squad/david/books/xenocide.jpg',
      'https://www.amazon.com/Xenocide-Quintet-Orson-Scott-Card/dp/0812509250',
    ),
    ReadingImageLink(
      'Speaker for the Dead',
      'assets/images/squad/david/books/speakerDead.jpg',
      'https://www.amazon.com/Speaker-Ender-Quintet-Orson-Scott/dp/0812550757',
    ),
    ReadingImageLink(
      'Ender\'s Game',
      'assets/images/squad/david/books/endersGame.jpg',
      'https://www.amazon.com/Enders-Ender-Quintet-Orson-Scott/dp/0812550706',
    ),
  ];
}
