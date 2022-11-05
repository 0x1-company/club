import 'package:club/components/avatar_card.dart';
import 'package:flutter/material.dart';

class LeaderBoardAccountCard extends StatelessWidget {
  const LeaderBoardAccountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        children: const [
          SizedBox(
            width: 32,
            child: Center(
              child: Text(
                '1',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          AvatarCard(
            url:
                'https://pbs.twimg.com/profile_images/1498207055723003906/LGs7pwLK_400x400.jpg',
            width: 48,
            height: 48,
          ),
          SizedBox(width: 16),
          Text(
            'harumakida.partyin',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 9,
            ),
          ),
          Spacer(),
          SizedBox(
            width: 51,
            child: Center(
              child: Text(
                '12',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
