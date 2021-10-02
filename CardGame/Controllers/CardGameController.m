//
//  CardGameController.m
//  CardGame
//
//  Created by Eyal Avissar on 02/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import "CardGameController.h"
#import "Deck.h"

@interface CardGameController ()
{
    __weak IBOutlet UIButton *cardButton;
    Deck *gameDeck;
}
@end

@implementation CardGameController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    cardButton.layer.cornerRadius = 10;
    gameDeck = [[Deck alloc] init];

}

-(IBAction)flipCard: (UIButton *) button {
    GameCard *card = [gameDeck getCardAtTop];
    [button setTitle: card.symbol forState:UIControlStateNormal];
    
}

@end
