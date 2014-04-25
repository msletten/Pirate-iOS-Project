//
//  MSViewController.h
//  Pirate
//
//  Created by Mat Sletten on 4/21/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSTile.h"
#import "MSTileFactory.h"
#import "MSCharacter.h"

@interface MSViewController : UIViewController

//Instance Variables

@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *currentTile;
@property (strong, nonatomic) MSCharacter *characterStats;


//IBOutlets

@property (strong, nonatomic) IBOutlet UIImageView *backgroundView;
@property (strong, nonatomic) IBOutlet UILabel *healthNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyText;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;


//IBActions

- (IBAction)actionButtonPressed:(UIButton *)sender;

- (IBAction)northButtonPressed:(UIButton *)sender;

- (IBAction)eastButtonPressed:(UIButton *)sender;

- (IBAction)southButtonPressed:(UIButton *)sender;

- (IBAction)westButtonPressed:(UIButton *)sender;



@end
