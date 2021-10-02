//
//  Deck.m
//  CardGame
//
//  Created by Eyal Avissar on 02/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import "Deck.h"
@interface Deck ()
-(GameCard *) getCardAtIndex: (int) index;
@end

@implementation Deck

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.cards = [[NSMutableArray alloc] init];

        for (int suit = 0; suit < 4; suit++) {
            for (int rank = 0; rank < 13; rank++) {
                GameCard *card = [[GameCard alloc] initWithSuit:suit Rank:rank];
                
                [self.cards addObject:card];
            }
        }
    }
    return self;
}

- (GameCard *)getCardAtTop {
    return [self getCardAtIndex:(int)[self.cards count] - 1];
}

- (GameCard *)getCardAtRandom {
    int cardIndex = arc4random_uniform((int)[self.cards count] - 1);
    
    return [self getCardAtIndex:cardIndex];
    
}

- (GameCard *)getCardAtIndex:(int)index {
    GameCard *card = [self.cards objectAtIndex:index];
    [self.cards removeObjectAtIndex:index];
    
    return card;
}

@end
