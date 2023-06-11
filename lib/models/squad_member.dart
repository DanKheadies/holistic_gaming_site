import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SquadMember extends Equatable {
  final String name;
  final String imageUrl;
  final List<Widget> description;
  final String linkText;
  final String linkUrl;

  const SquadMember({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.linkText,
    required this.linkUrl,
  });

  @override
  List<Object> get props => [
        name,
        imageUrl,
        description,
        linkText,
        linkUrl,
      ];

  static List<SquadMember> squad = [
    const SquadMember(
      name: 'David Corso',
      imageUrl: 'assets/images/squad/david/david1.jpg',
      description: [
        Text('I\'m a jack of all trades.'),
        SizedBox(height: 15),
        Text('I work a lot.'),
        Text('I play a lot.'),
        Text('I read a lot.'),
        Text('I do a lot.'),
        SizedBox(height: 15),
        Text('If you\'ve got time..'),
      ],
      linkText: 'Checkout my portfoilo.',
      linkUrl: 'squad-david',
    ),
  ];
}
