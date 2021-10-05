//
//  Deck.h
//  CardGame
//
//  Created by Eyal Avissar on 02/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface Deck : NSObject

@property NSMutableArray *cards;
@property (nonatomic) NSMutableArray *matchCards;

-(GameCard *)getCardAtTop;
-(GameCard *)getCardAtRandom;
+(Deck *) getDeckWithSize: (int) deckSize;

@end

NS_ASSUME_NONNULL_END
