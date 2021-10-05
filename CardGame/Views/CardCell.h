//
//  CardCell.h
//  CardGame
//
//  Created by Eyal Avissar on 05/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface CardCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *cardLabel;

@property (readonly) GameCard *card;

+(NSString *) identifier;
-(void) configure: (GameCard *) card;

@end

NS_ASSUME_NONNULL_END
