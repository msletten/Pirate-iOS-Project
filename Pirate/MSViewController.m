//
//  MSViewController.m
//  Pirate
//
//  Created by Mat Sletten on 4/21/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSViewController.h"
#import "MSTileFactory.h"
#import "MSTile.h"
#import "MSCharacter.h"

@interface MSViewController ()

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MSTileFactory *tileFactory = [[MSTileFactory alloc] init];
    self.currentTile = [tileFactory tiles];
    self.characterStats = [tileFactory charachter];
    self.boss = [tileFactory theTricero];
    self.currentPoint = CGPointMake(0, 0);
    
//    
//    MSTile *tileOne = [[MSTile alloc] init];
//    tileOne.actionButtonName = @"";
//    tileOne.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
//    tileOne.story = @"What's Up Pirates?";
//    self.backgroundImage.image = tileOne.backgroundImage;
//    self.storyText.text = tileOne.story;
    
    [self updateTile];
    [self updateButtons];
    [self updateCharacterStatsForArmor:nil withWeapon:nil withHealthEffect:0];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)actionButtonPressed:(UIButton *)sender
{
    MSTile *tile = [[self.currentTile objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect == -12)
    {
        self.boss.bossHealth = self.boss.bossHealth - self.characterStats.damage;
    }
    [self updateCharacterStatsForArmor:tile.armor withWeapon:tile.weapon withHealthEffect:tile.healthEffect];
    
    if (self.characterStats.health <= 0)
    {
        UIAlertView *deathAlertView = [[UIAlertView alloc] initWithTitle:@"Death Message" message:@"The Tricero Killed You. Restart!" delegate:nil cancelButtonTitle:@"Go Again" otherButtonTitles:nil];
        [deathAlertView show];
    }
    else if (self.boss.bossHealth <= 0)
    {
        UIAlertView *winAlertView = [[UIAlertView alloc] initWithTitle:@"Hero" message:@"You have slayed the Tricero!" delegate:nil cancelButtonTitle:@"Celebrate" otherButtonTitles:nil];
        [winAlertView show];
    }
    [self updateTile];
}

- (IBAction)northButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)resetButtonPressed:(UIButton *)sender
{
    self.characterStats = nil;
    self.boss = nil;
    [self viewDidLoad];
}

#pragma mark - Helper Methods

- (void)updateButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}

- (void)updateTile
{
    MSTile *tileModel = [[self.currentTile objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyText.text = tileModel.story;
    self.backgroundView.image = tileModel.backgroundImage;
    self.healthNumberLabel.text = [NSString stringWithFormat:@"%i", self.characterStats.health];
    self.armorNameLabel.text = [NSString stringWithFormat:@"%@", self.characterStats.armor.name];
    self.weaponNameLabel.text = [NSString stringWithFormat:@"%@", self.characterStats.weapon.name];
    self.damageNumberLabel.text = [NSString stringWithFormat:@"%i", self.characterStats.damage];
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
}

- (BOOL)tileExistsAtPoint: (CGPoint) point
{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.currentTile count] && point.y < [[self.currentTile objectAtIndex:point.x] count])
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

-(void)updateCharacterStatsForArmor:(MSArmor *)armor withWeapon:(MSWeapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil)
    {
        self.characterStats.health = self.characterStats.health - self.characterStats.armor.health + armor.health;
        self.characterStats.armor = armor;
    }
    else if (weapon != nil)
    {
        self.characterStats.damage = self.characterStats.damage - self.characterStats.weapon.damage + weapon.damage;
        self.characterStats.weapon = weapon;
    }
    else if (healthEffect != 0)
    {
        self.characterStats.health = self.characterStats.health + healthEffect;
    }
    else
    {
        self.characterStats.health = self.characterStats.health + self.characterStats.armor.health;
        self.characterStats.damage = self.characterStats.damage + self.characterStats.weapon.damage;
    }
}


@end
