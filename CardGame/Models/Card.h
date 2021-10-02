//
//  Card.h
//  CardGame
//
//  Created by Eyal Avissar on 02/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

@property int suit;
@property int rank;

-(instancetype)initWithSuit: (int) suit Rank: (int) rank;

@end

NS_ASSUME_NONNULL_END
