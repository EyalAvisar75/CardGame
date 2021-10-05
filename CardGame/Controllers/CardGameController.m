//
//  CardGameController.m
//  CardGame
//
//  Created by Eyal Avissar on 02/10/2021.
//  Copyright © 2021 Eyal Avissar. All rights reserved.
//

#import "CardGameController.h"
#import "Deck.h"
#import "CardCell.h"

@interface CardGameController ()
{
    
    __weak IBOutlet UICollectionView *cardCollection;
        
    __weak IBOutlet UILabel *scoreLabel;
}

@property NSMutableArray *chosenCards;
@property NSMutableArray *matchedCards;

@end

@implementation CardGameController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.chosenCards = [[NSMutableArray alloc] init];
    self.matchedCards = [[NSMutableArray alloc] init];
    
    cardCollection.dataSource = self;
    cardCollection.delegate = self;
    [cardCollection registerNib:[UINib nibWithNibName:@"CardCell" bundle:nil] forCellWithReuseIdentifier:[CardCell identifier]];
    
    self.numberOfCards = 12;
    self.gameDeck = [Deck getDeckWithSize:self.numberOfCards];
}

//MARK:- collectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.numberOfCards;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CardCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[CardCell identifier] forIndexPath:indexPath];
    
    GameCard *card = self.gameDeck.cards[indexPath.row];
    
    if (card.isChosen || card.isMatch) {
        if (card.isMatch && ![self.matchedCards containsObject:card]) {
            [self.matchedCards addObject:card];
        }
        [cell configure: card];
    }
    else {
        cell.cardLabel.text = @"Hit Me!";
        cell.backgroundColor = [UIColor whiteColor];
    }
    
    return cell;
}


//MARK:- collectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if ([self.matchedCards count] == self.numberOfCards) {
        NSLog(@"Game is ended!");
        return;
    }
    
    if ([self.chosenCards count] == 2) {
        [self points];
        scoreLabel.text = [NSString stringWithFormat:@"%d", self.score];
        [self.chosenCards removeAllObjects];
        [cardCollection reloadData];
    }
    
    if ([self.chosenCards containsObject:self.gameDeck.cards[indexPath.row]]) {
        return;
    } else {
        Card *card = self.gameDeck.cards[indexPath.row];
        if (card.isMatch) {
            return;
        }
        
        card.chosen = true;
    }
    
    if ([self.chosenCards count] < 2) {
        [self.chosenCards addObject:self.gameDeck.cards[indexPath.row]];
        [cardCollection reloadData];
    }
    
}

- (void)points {
    Card *firstCard = self.chosenCards[0];
    Card *secondCard = self.chosenCards[1];
    
    firstCard.chosen = false;
    secondCard.chosen = false;
        
    if (firstCard.rank == secondCard.rank) {
        self.score += 4;
        firstCard.match = true;
        secondCard.match = true;
    }
    
    if (firstCard.suit == secondCard.suit) {
        self.score += 1;
        firstCard.match = true;
        secondCard.match = true;
    }
    
    if (firstCard.isMatch) {
        [self.matchedCards addObject:firstCard];
        [self.matchedCards addObject:secondCard];
    }
}


-(IBAction)flipCard: (UIButton *) button {
//    GameCard *card = [gameDeck getCardAtTop];
//    [button setTitle: card.symbol forState:UIControlStateNormal];
//
}

@end
