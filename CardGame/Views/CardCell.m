//
//  CardCell.m
//  CardGame
//
//  Created by Eyal Avissar on 05/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import "CardCell.h"

@implementation CardCell

static NSString *cellIdentifier = @"CardCell";

+ (NSString *)identifier {
    return cellIdentifier;
}

- (void)configure:(GameCard *)card {
    self.cardLabel.text = card.symbol;
    self.backgroundColor = [UIColor whiteColor];
    self.layer.cornerRadius = 10;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

@end
