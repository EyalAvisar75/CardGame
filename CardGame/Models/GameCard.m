//
//  GameCard.m
//  CardGame
//
//  Created by Eyal Avissar on 02/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import "GameCard.h"

@implementation GameCard


- (NSString *)getRankSymbol {
    NSString *rankSymbol = @"";
    
    if (self.rank == 0) {
        rankSymbol = @"A";
    }
    else if (self.rank == 10) {
        rankSymbol = @"J";
    }
    else if (self.rank == 11) {
        rankSymbol = @"Q";
    }
    else if (self.rank == 12) {
        rankSymbol = @"K";
    }
    else {
        rankSymbol = [NSString stringWithFormat:@"%d", self.rank + 1];
    }
    
    return rankSymbol;
}

- (instancetype)initWithSuit: (int) suit Rank: (int) rank {
    
    self = [super initWithSuit:suit Rank:rank];
    
    
    
    if (self) {
        
        NSString *rankSymbol = [self getRankSymbol];
                
        switch (self.suit) {
            case 0:
                self.symbol = [NSString stringWithFormat: @"♣︎%@", rankSymbol];
                break;
                
            case 1:
                self.symbol = [NSString stringWithFormat: @"♥︎%@", rankSymbol];
                break;
            case 2:
                self.symbol = [NSString stringWithFormat: @"♦︎%@", rankSymbol];
                break;
            case 3:
                self.symbol = [NSString stringWithFormat: @"♠︎%@", rankSymbol];
                break;
            default:
                self.symbol = @"?";
                break;
        }
    }
    return self;
}
@end
