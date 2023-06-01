import 'package:equatable/equatable.dart';

class GameSlide extends Equatable {
  final String game;
  final String picPath;
  final String description;
  final String callToAction;
  final double upperPosition;
  final double? mobileUpperPosiion;
  final double? tabletUpperPosition;
  final double? desktopUpperPosition;
  final double lowerPosition;
  final double? mobileLowerPosiion;
  final double? tabletLowerPosition;
  final double? desktopLowerPosition;
  final String? navLink;
  final String onTapScreen;

  const GameSlide({
    required this.game,
    required this.picPath,
    required this.description,
    required this.callToAction,
    required this.upperPosition,
    this.mobileUpperPosiion,
    this.tabletUpperPosition,
    this.desktopUpperPosition,
    required this.lowerPosition,
    this.mobileLowerPosiion,
    this.tabletLowerPosition,
    this.desktopLowerPosition,
    this.navLink,
    required this.onTapScreen,
  });

  @override
  List<Object?> get props => [
        game,
        picPath,
        description,
        callToAction,
        upperPosition,
        mobileUpperPosiion,
        tabletUpperPosition,
        desktopUpperPosition,
        lowerPosition,
        mobileLowerPosiion,
        tabletLowerPosition,
        desktopLowerPosition,
        navLink,
        onTapScreen,
      ];

  static List<GameSlide> gameSlides = [
    const GameSlide(
      game: 'The Story of Dan Kheadies',
      picPath: 'assets/images/games/the-story-of-dan-kheadies.png',
      description: 'Join Dan as he starts the adventure of that is his life.',
      callToAction: 'Play the ever unfolding story that is Dan K.',
      upperPosition: 0,
      lowerPosition: 0,
      onTapScreen: '/games/the-story-of-dan-kheadies',
    ),
    const GameSlide(
      game: 'Corso Games',
      picPath: 'assets/images/games/corso-games.png',
      description:
          'Care to play a game? Or 2? Treat yourself to the simple fun of Corso Games.',
      callToAction: 'We got classics, fantastics, and more.',
      upperPosition: 0,
      lowerPosition: 0,
      onTapScreen: '/games/corso-games',
    ),
    const GameSlide(
      game: 'Truth or Elaborate Lie',
      picPath: 'assets/images/games/truth-or-elaborate-lie.png',
      description:
          'Become smarter and more adept at seeing and knowing the Truth versus Elaborate Lies.',
      callToAction: 'After all, only you can tell the difference.',
      upperPosition: 250,
      mobileUpperPosiion: 145,
      tabletUpperPosition: 210,
      desktopUpperPosition: 250,
      lowerPosition: 0,
      navLink: 'https://truthorelaboratelie.com/',
      onTapScreen: '',
    ),
    const GameSlide(
      game: 'TowerDeez\'s Super Best Friends Tower Defense',
      picPath: 'assets/images/games/td-sbf-td.png',
      description:
          'When the world falls into darkness, you need a friend or two to help you see the light.',
      callToAction:
          'Join the Super Best Friends and save the world from the forces of evil.',
      upperPosition: 85,
      mobileUpperPosiion: 40,
      tabletUpperPosition: 65,
      desktopUpperPosition: 85,
      lowerPosition: 120,
      mobileLowerPosiion: 55,
      tabletLowerPosition: 90,
      desktopLowerPosition: 120,
      onTapScreen: '/games/super-best-friends',
    ),
    const GameSlide(
      game: 'Immunis',
      picPath: 'assets/images/games/immunis.png',
      description:
          'How will you stand up against the hordes that threaten to infect you?',
      callToAction: 'The battle is inevitable, so enter the fray.',
      upperPosition: 0,
      lowerPosition: 0,
      navLink: 'https://immunisgame.com/',
      onTapScreen: '',
    ),
    const GameSlide(
      game: 'Guess Who Colluded',
      picPath: 'assets/images/games/guess-who-colluded.png',
      description: 'It\'s less of a matter of IF and more of a matter of WHO.',
      callToAction: 'Guess Who Colluded while you still can...',
      upperPosition: 130,
      mobileUpperPosiion: 70,
      tabletUpperPosition: 100,
      desktopUpperPosition: 130,
      lowerPosition: 170,
      mobileLowerPosiion: 100,
      tabletLowerPosition: 145,
      desktopLowerPosition: 170,
      navLink: 'https://guesswhocolluded.com/',
      onTapScreen: '',
    ),
    const GameSlide(
      game: 'Ploys R Us',
      picPath: 'assets/images/games/ploys-r-us.png',
      description:
          '"A cunning plan or action designed to turn a situation to one\'s own advantage."',
      callToAction:
          'Ploy these games with friends and revel in the shenanigans.',
      upperPosition: 0,
      lowerPosition: 0,
      onTapScreen: '/games/ploys-r-us',
    ),
  ];
}
