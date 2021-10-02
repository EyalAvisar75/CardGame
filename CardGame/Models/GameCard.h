//
//  GameCard.h
//  CardGame
//
//  Created by Eyal Avissar on 02/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameCard : Card

@property (copy) NSString *symbol;

-(instancetype)initWithSuit: (int) suit Rank: (int) rank;

@end

NS_ASSUME_NONNULL_END
