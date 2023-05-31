import 'package:equatable/equatable.dart';

class GameSlide extends Equatable {
  final String game;
  final String picPath;
  final String description;
  final String callToAction;
  final double upperPosition;
  final double lowerPosition;

  const GameSlide({
    required this.game,
    required this.picPath,
    required this.description,
    required this.callToAction,
    required this.upperPosition,
    required this.lowerPosition,
  });

  @override
  List<Object> get props => [
        game,
        picPath,
        description,
        callToAction,
        upperPosition,
        lowerPosition,
      ];

  static List<GameSlide> gameSlides = [
    const GameSlide(
      game: 'The Story of Dan Kheadies',
      picPath: 'assets/images/games/the-story-of-dan-kheadies.png',
      description: 'Join Dan as he starts the adventure of that is his life.',
      callToAction: 'Play the ever unfolding story that is Dan K.',
      upperPosition: 0,
      lowerPosition: 0,
    ),
    const GameSlide(
      game: 'Corso Games',
      picPath: 'assets/images/games/corso-games.png',
      description:
          'Care to play a game? Or 2? Treat yourself to the simple fun of Corso Games.',
      callToAction: 'We got classics, fantastics, and more.',
      upperPosition: 0,
      lowerPosition: 0,
    ),
    const GameSlide(
      game: 'Truth or Elaborate Lie',
      picPath: 'assets/images/games/truth-or-elaborate-lie.png',
      description:
          'Become smarter and more adept at seeing and knowing the Truth versus Elaborate Lies.',
      callToAction: 'After all, only you can tell the difference.',
      upperPosition: 135,
      lowerPosition: 0,
    ),
    const GameSlide(
      game: 'TowerDeez\'s Super Best Friends Tower Defense',
      picPath: 'assets/images/games/td-sbf-td.png',
      description:
          'When the world falls into darkness, you need a friend or two to help you see the light.',
      callToAction:
          'Join the Super Best Friends and save the world from the forces of evil.',
      upperPosition: 40,
      lowerPosition: 55,
    ),
    const GameSlide(
      game: 'Immunis',
      picPath: 'assets/images/games/immunis.png',
      description:
          'How will you stand up against the hordes that threaten to infect you?',
      callToAction: 'The battle is inevitable, so enter the fray.',
      upperPosition: 0,
      lowerPosition: 0,
    ),
    const GameSlide(
      game: 'Guess Who Colluded',
      picPath: 'assets/images/games/guess-who-colluded.png',
      description: 'It\'s less of a matter of IF and more of a matter of WHO.',
      callToAction: 'Guess Who Colluded while you still can...',
      upperPosition: 65,
      lowerPosition: 90,
    ),
    const GameSlide(
      game: 'Ploys R Us',
      picPath: 'assets/images/games/ploys-r-us.png',
      description:
          '"A cunning plan or action designed to turn a situation to one\'s own advantage."',
      callToAction: 'Play these games with friends and ',
      upperPosition: 0,
      lowerPosition: 0,
    ),
  ];
}
