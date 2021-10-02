//
//  Card.m
//  CardGame
//
//  Created by Eyal Avissar on 02/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import "Card.h"

@implementation Card

- (instancetype)initWithSuit:(int)suit Rank:(int)rank {
    
    self = [super init];
    
    if (self) {
        self.suit = suit;
        self.rank = rank;
    }
    
    return self;
}
@end
