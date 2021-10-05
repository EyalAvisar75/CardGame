//
//  CardGameController.h
//  CardGame
//
//  Created by Eyal Avissar on 02/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"


NS_ASSUME_NONNULL_BEGIN

@interface CardGameController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property int numberOfCards;
@property (nonatomic) int score;
@property Deck *gameDeck;

@end

NS_ASSUME_NONNULL_END
