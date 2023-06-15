import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class PloysGame extends Equatable {
  final String title;
  final List<Widget> content;

  const PloysGame({
    required this.title,
    required this.content,
  });

  @override
  List<Object?> get props => [
        title,
        content,
      ];

  static List<PloysGame> ploysGameCollection = [
    // const PloysGame(
    //   title: '',
    //   content: [
    //     SelectionArea(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             '',
    //           ),
    //           SizedBox(height: 15),
    //           Text(
    //             '',
    //           ),
    //           SizedBox(height: 8),
    //           BulletItem(
    //             content: '',
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // ),
    const PloysGame(
      title: 'Once Upon a Time',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Someone starts by saying "Once Upon a Time..." That person, the Story Teller, will re-tell a tale from a different point of view. The other plays must try to identify what the story is by guessing the title of the story. The Story Teller wants to try and get through as much of the story as possible before it\'s guessed. So proper nouns, like names and places, should be avoided. The player who correctly guesses the story first becomes the Story Teller and starts a new round with "Once Upon a Time..."',
              ),
              SizedBox(height: 15),
              Text(
                'For example: \n"Once Upon a Time... There was a noble and caring prince who wanted to give the people of his kingdom the regality they deserved. He wanted to find himself a queen so he could rule as king and usher untold peace in the realm." \n"Snow White!" \n"Nope. He used the magical artifacts and creatures in his land to find the perfect princess, and upon hearing of her entrampment in a castle surrounded by lava and guarded by a dragon, he issued a challenge to the bravest knights in the land." \n"Eldenring!" \n"What? No.. The champion of his challenge—an ugly brute of a beast—had but one request, to remove the refuse of creatures that invaded his swamp, and he would return the princess to the beloved prince." \n"Shrek!" \n"Correct!"',
              ),
              SizedBox(height: 15),
              Text(
                'Variations include:',
              ),
              SizedBox(height: 8),
              BulletItem(
                content:
                    'Once Upon Our Time — instead of guessing the title of the story, players add to the story from another point of view when they think they know it. The Story Teller lets them know if they\'re helping or hurting their telling, i.e. correctly expanding upon the story or they have the wrong tale. And the story continues until all players are able to add a new point of view or if the end of the story is reached. The last player to join in gets to pick the new Story Teller, but it can\'t be themselves or the current Story Teller.',
              ),
            ],
          ),
        ),
      ],
    ),
    const PloysGame(
      title: 'Cheers to the Governor',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'In a clockwise direction, players take turns counting up from 1 to 21. Whenever the count reaches 21, the person who says "21" raises a toast and says "Cheers to the governor!" Everyone toasts with them. That player gets to make a rule that all other players must adhere to for the duration of the game. If a player miscounts, counts out of a turn, doesn\'t follow a rule, or takes too long to say the number, they drink for their shame, and start the count again at 1.',
              ),
              SizedBox(height: 15),
              Text(
                'There is one initial rule: 7 and 14 are switched.',
              ),
              SizedBox(height: 15),
              Text(
                'For example: \n"One." \n"Two." \n"Three." \n"Four." \n"Five." \n"Six." \n"Fourteen." \n"Eight." \n"Nine." \n"Ten." \n"Eleven." \n"Twelve." \n"Thirteen." \n"Fourteen." \n"Nope! Shame.. Drink." \n"*drink* One.."',
              ),
              SizedBox(height: 15),
              Text(
                'Examples of new rules to include:',
              ),
              SizedBox(height: 8),
              BulletItem(
                content: 'At 9, reverse direction of counting.',
              ),
              BulletItem(
                content: 'Multiples of 5 must be said in español.',
              ),
              BulletItem(
                content: 'No one can say anyone\'s name.',
              ),
              BulletItem(
                content:
                    'At 17, skip it and the person who was suppose to say it, and go to the next person to say 18.',
              ),
            ],
          ),
        ),
      ],
    ),
    const PloysGame(
      title: 'Never Have I Ever',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Everyone holds up the same amount of fingers: 1 to 5. The first players starts by saying "Never have I ever..." and says something they\'ve never done. Everyone else that has done the thing puts down a finger. Play continues in a clockwise direction with the next person saying "Never have I ever..." When a player puts down all of their fingers, they are punished (within the bounds of human dignity). They can re-join by putting up the initial amount of fingers.',
              ),
              SizedBox(height: 15),
              Text(
                'For example: \n"Never have I ever... gone sky diving."',
              ),
            ],
          ),
        ),
      ],
    ),
    const PloysGame(
      title: 'Monkey\'s Paw: Super Powers Edition',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'One player starts by naming a super power. All of the other players think of a twist to that power—a monkey\'s paw curse upon a wish—that nerfs that super power, makes it impractical, or disrupts the nature of the power. The player that named the original power decides which twist is the "most monkey\'s paw-ish," and the player that suggested the twist wins. Now the winner states a super power and the game starts again.',
              ),
              SizedBox(height: 15),
              Text(
                'For example: \n"The super power is: flight." \n"You can only fly an inch off the ground." \n"Every time you fly, you can\'t control your speed." \n"Every time you fly, you can\'t control your bladder." \n"You can only fly if you\'re completely naked." \n"Hmmm... The inch off the ground would be such a disappointment for being able to fly. That one wins." \n"Ok, the super power is..."',
              ),
              SizedBox(height: 15),
              Text(
                'Examples of super powers include:',
              ),
              SizedBox(height: 8),
              BulletItem(
                content: 'Strength',
              ),
              BulletItem(
                content: 'Read minds',
              ),
              BulletItem(
                content: 'Teleportation',
              ),
            ],
          ),
        ),
      ],
    ),
    const PloysGame(
      title: 'Guess My Hobby',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Players think of a hobby they participate in or know of someone that does. When ready, other players ask "yes" or "no questions to try to guess what the hobby is. Whoever can stump the others longest, wins.',
              ),
              SizedBox(height: 15),
              Text(
                'For example: \n"OK, I got one." \n"Can you do it outdoors?" \n"Yes." \n"Can you do it indoors?" \n"Yes." \n"Does it require some material outside of what you naturally have on you?" \n"Yes." \n"Is it expensive?" \n"No." \n"Do you use your hands?" \n"Yes." \n"Do you use another part of your body?" \n"Yes." \n"Do you use your feet?" \n"No." \n"Do you use your mouth?" \n"Yes." \n"Is it a musical thing?" \n"No." \n"Does it involve balloons?" \n"Yes." \n"Do you make balloon animals and stuff?" \n"Yes! That\'s it."',
              ),
            ],
          ),
        ),
      ],
    ),
    const PloysGame(
      title: 'Sock Cutter',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Increment the following statement as many times as possible, as fast as you can. The person with the highest increment and fastest time before messing up, wins.',
              ),
              SizedBox(height: 15),
              Text(
                'There is one sock cutter, he cuts one sock. \nThere are two sock cutters, they cut two socks. \nThere are three sock cutters, they cut three socks. \nThere are four sock cutters, they cut four socks. \nThere are five sock cutters, they cut five socks...',
              ),
            ],
          ),
        ),
      ],
    ),
    const PloysGame(
      title: 'Contact',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'One player, the Worder, thinks of a word. The other players are trying to guess that word. The Worder gives the players the first letter of the word. The other players try to guess that word, but they can only say the word if someone else has given a clue as to what they think the word is. One player, a momentary Clue Giver, gives a hint, phrase, or makes a statement about a word that starts with the letter. Once another player thinks they know the word the Clue Giver is making, they say "Contact" and count down from 3. After "1," both players say the word. If they say the same word, the Worder has to give the second letter of the word to the players. If incorrect, they players continue giving clues with only the first letter known. The Worder can snipe or intervene a Clue-Contact connection by saying the word the Clue Giver was thinking of. Clues and letters are shared until the word is identified. If the Worder says the original word, they lose. If a player successfully Contacts a Clue and it\'s the word, the players win.',
              ),
              SizedBox(height: 15),
              Text(
                'For example: \n"Ok, I got a word (thinks but does not say DONUT). It starts with a D." \n"It\'s man\'s best friend and goes bark bark." \n"Oh! Contact!" \n"Ok, 3.. 2—" \n"Dog. And nope, the word is not dog." \n"We did this our first night out." \n"Contact!" \n"3. 2. 1. Drink!" "Dance!" \n"Nope.. No contact for you guys." \n"Hmmm... Ok, it\'s what you always call me when I wear my flamingo shirt." \n"Ohh, contact!" \n"3. 2. 1. Dashing!" "Dashing!" \n"Well done.. The second letter is O." \n"Hmmm.. D. O. Oh, Defense of the Ancients!" \n"The Ancients must live! Contact! 3. 2. 1." \n"DOTA." "DOTA." \n"What in the Sam-hell is a DOTA? Whatever, the third letter is N." \n"N? Hmmm.. Oh, he\'s a turtle that fights crim—" \n"Donatello. And clearly not the word." \n"Oh, it\'s our school mascot." \n"Contact! 3—" \n"Donkey." \n"Nope.. 2. 1." \n"Tiger!" "Tiger! Yay!" \n"No, no.. It has to be inline with the letters I\'ve given so far. Hence why I said DONkey. Even if y\'all contacted Tiger, you get no credit." \n"Fine, it\'s an animal that\'s an ASS." \n"Contact! 3. 2—", \n"Donkey. Or Donkey Kong. And nope." \n"Hmmm.. Oh, how about, it\'s a breakfast food and comes in many flavors and styles." \n"..." \n"Oh contact!" \n"3. 2. 1." \n"Donut!" "DONUT!" \n"Yup, it was donut. Good work."',
              ),
              SizedBox(height: 15),
              Text(
                'General Rules (can be ignored or added to) that should be agreed upon by all players:',
              ),
              SizedBox(height: 8),
              BulletItem(
                content:
                    'No proper names (people, places, etc.) for the word, but they can be used as clues.',
              ),
              BulletItem(
                content: 'Only English words (or language of your choice)',
              ),
              BulletItem(
                content:
                    'Single words, no phrases. If it might be hyphenated, think of a different word.',
              ),
            ],
          ),
        ),
      ],
    ),
    const PloysGame(
      title: 'Don\'t Drop the Soap | Trout',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gentlemanly, toss an un-opened, carbonated beverage amongst friends. You can only use one hand to throw and catch. If you drop it or toss it in an impossible (or un-gentleman-y) way, you have to crack it open and immediately drink it all. Start again with a new drink.',
              ),
              SizedBox(height: 15),
              Text(
                'Gentleman\'s Rules:',
              ),
              SizedBox(height: 8),
              BulletItem(
                content: 'All throws should have some arc in their trajectory.',
              ),
              BulletItem(
                content:
                    'Toss the can in a reasonable area, i.e. no dangerous materials or angles.',
              ),
              BulletItem(
                content: 'Avoid purposefully shaking up the drink.',
              ),
              BulletItem(
                content: 'Fake outs and pizzazz are welcomed.',
              ),
            ],
          ),
        ),
      ],
    ),
    const PloysGame(
      title: 'Binary Roulette | PopTop Countdown | The Odds are Even',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Players gather over an un-opened, carbonated beverage. All players place one finger on the top rim of the drink. Starting with one person, the player counts down from 3. After 1, the counter says "even" or "odd," and all players either A) keep their finger out on the drink or B) remove their finger from the drink. Count up the number of fingers. If the count matches the player\'s guess of odd or even, they are safe for the round and step back. If they were wrong, they stay in. The last person left has to crack open and immediately finish the drink. If a player tries to "game" the guess by removing or adding their finger after the player has said "even" or "odd," then they are punished (within the bounds of human dignity) and remain in for the next round.',
              ),
              SizedBox(height: 15),
              Text(
                'For example: \nFive players stand around a drink. The first player counts down: 3. 2. 1. And calls "even." There are 3 fingers on the drink including theirs, i.e. two players removed their fingers before or at the "even." The player remains in and the second player is up. 3. 2. 1. "Odd" and there are 5 fingers on the drink. The second player steps back from the drink. Now the third player is up and there are only 4 players left.',
              ),
            ],
          ),
        ),
      ],
    ),
  ];
}
