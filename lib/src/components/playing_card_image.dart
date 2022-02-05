import 'package:casino_plus/src/components/url_image.dart';
import 'package:casino_plus/src/config/image_names.dart';
import 'package:casino_plus/src/types/playing_card.dart';
import 'package:flutter/material.dart';

/// Playing Card's Image
class PlayingCardImage extends StatelessWidget {
  /// Card ID
  final PlayingCard card;

  /// pass Card ID
  const PlayingCardImage(this.card);
  @override
  Widget build(BuildContext context) {
    final imageName = _imageName(card);
    return UrlImage.assetsName(imageName);
  }
}

String _imageName(PlayingCard id) {
  switch (id) {
    case PlayingCard.back:
      return ImageNames.cardBack;
    case PlayingCard.spade1:
      return ImageNames.cardSpade1;
    case PlayingCard.spade2:
      return ImageNames.cardSpade2;
    case PlayingCard.spade3:
      return ImageNames.cardSpade3;
    case PlayingCard.spade4:
      return ImageNames.cardSpade4;
    case PlayingCard.spade5:
      return ImageNames.cardSpade5;
    case PlayingCard.spade6:
      return ImageNames.cardSpade6;
    case PlayingCard.spade7:
      return ImageNames.cardSpade7;
    case PlayingCard.spade8:
      return ImageNames.cardSpade8;
    case PlayingCard.spade9:
      return ImageNames.cardSpade9;
    case PlayingCard.spade10:
      return ImageNames.cardSpade10;
    case PlayingCard.spade11:
      return ImageNames.cardSpade11;
    case PlayingCard.spade12:
      return ImageNames.cardSpade12;
    case PlayingCard.spade13:
      return ImageNames.cardSpade13;
    case PlayingCard.heart1:
      return ImageNames.cardHeart1;
    case PlayingCard.heart2:
      return ImageNames.cardHeart2;
    case PlayingCard.heart3:
      return ImageNames.cardHeart3;
    case PlayingCard.heart4:
      return ImageNames.cardHeart4;
    case PlayingCard.heart5:
      return ImageNames.cardHeart5;
    case PlayingCard.heart6:
      return ImageNames.cardHeart6;
    case PlayingCard.heart7:
      return ImageNames.cardHeart7;
    case PlayingCard.heart8:
      return ImageNames.cardHeart8;
    case PlayingCard.heart9:
      return ImageNames.cardHeart9;
    case PlayingCard.heart10:
      return ImageNames.cardHeart10;
    case PlayingCard.heart11:
      return ImageNames.cardHeart11;
    case PlayingCard.heart12:
      return ImageNames.cardHeart12;
    case PlayingCard.heart13:
      return ImageNames.cardHeart13;
    case PlayingCard.diamond1:
      return ImageNames.cardDiamond1;
    case PlayingCard.diamond2:
      return ImageNames.cardDiamond2;
    case PlayingCard.diamond3:
      return ImageNames.cardDiamond3;
    case PlayingCard.diamond4:
      return ImageNames.cardDiamond4;
    case PlayingCard.diamond5:
      return ImageNames.cardDiamond5;
    case PlayingCard.diamond6:
      return ImageNames.cardDiamond6;
    case PlayingCard.diamond7:
      return ImageNames.cardDiamond7;
    case PlayingCard.diamond8:
      return ImageNames.cardDiamond8;
    case PlayingCard.diamond9:
      return ImageNames.cardDiamond9;
    case PlayingCard.diamond10:
      return ImageNames.cardDiamond10;
    case PlayingCard.diamond11:
      return ImageNames.cardDiamond11;
    case PlayingCard.diamond12:
      return ImageNames.cardDiamond12;
    case PlayingCard.diamond13:
      return ImageNames.cardDiamond13;
    case PlayingCard.club1:
      return ImageNames.cardClub1;
    case PlayingCard.club2:
      return ImageNames.cardClub2;
    case PlayingCard.club3:
      return ImageNames.cardClub3;
    case PlayingCard.club4:
      return ImageNames.cardClub4;
    case PlayingCard.club5:
      return ImageNames.cardClub5;
    case PlayingCard.club6:
      return ImageNames.cardClub6;
    case PlayingCard.club7:
      return ImageNames.cardClub7;
    case PlayingCard.club8:
      return ImageNames.cardClub8;
    case PlayingCard.club9:
      return ImageNames.cardClub9;
    case PlayingCard.club10:
      return ImageNames.cardClub10;
    case PlayingCard.club11:
      return ImageNames.cardClub11;
    case PlayingCard.club12:
      return ImageNames.cardClub12;
    case PlayingCard.club13:
      return ImageNames.cardClub13;
    case PlayingCard.blackJocker:
      return ImageNames.cardBlackJocker;
    case PlayingCard.whiteJocker:
      return ImageNames.cardWhiteJocker;
  }
}
