//
//  MSTileFactory.m
//  Pirate
//
//  Created by Mat Sletten on 4/21/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSTileFactory.h"
#import "MSTile.h"
#import "MSWeapon.h"

@implementation MSTileFactory

-(NSArray *)tiles;
{
    MSTile *tileOne = [[MSTile alloc] init];
    tileOne.story = @"In the beginning, Captain 'El Guapo' Swashbuckler, perched on the bow of his ship, his first maiden at hand, and a big spider on his shoulder. He was armed only with the lumps his hands balled into.";
    tileOne.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    MSWeapon *dullSword = [[MSWeapon alloc] init];
    dullSword.name = @"Dull Sword";
    dullSword.damage = 2;
    tileOne.weapon = dullSword;
    tileOne.actionButtonName = @"Take Sword";
    
    MSTile *tileTwo = [[MSTile alloc] init];
    tileTwo.story = @"At the foot of the archipelago was his first challenger, a wry rum-soacked Maester called Grimmer Maker. He bled doom.";
    tileTwo.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    MSArmor *chainMail = [[MSArmor alloc] init];
    chainMail.name = @"Chainmail";
    chainMail.health = 7;
    tileTwo.armor = chainMail;
    tileTwo.actionButtonName = @"Take Armor";
    
    MSTile *tileThree = [[MSTile alloc] init];
    tileThree.story = @"Crazy Chester lent all his weight in every thumping he gave. He had a badass elephant gun, but it wasn't enough to stop El Guapo's swiftness.";
    MSArmor *usedSteel = [[MSArmor alloc] init];
    usedSteel.name = @"Used Steel";
    usedSteel.health = 19;
    tileThree.armor = usedSteel;
    MSWeapon *longSword = [[MSWeapon alloc] init];
    longSword.name = @"Long Sword";
    longSword.damage = 23;
    tileThree.weapon = longSword;
    tileThree.actionButtonName = @"Upgrade";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tileOne];
    [firstColumn addObject:tileTwo];
    [firstColumn addObject:tileThree];
    
    MSTile *tileFour = [[MSTile alloc] init];
    tileFour.story = @"At one of the islands, El Guapo houded the locals for a hammock, and a guzzle. The year at sea and lack of citrus had wrecked his legs. All he wanted now was rest.";
    tileFour.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tileFour.actionButtonName = @"Rest";
    
    MSTile *tileFive = [[MSTile alloc] init];
    tileFive.story = @"Swagger vetrans kept the little village outfitted in drunken howls - promising to destroy the Islands' rumored beast, The Tricero.";
    MSWeapon *fierceSword = [[MSWeapon alloc] init];
    fierceSword.name = @"Fierce Sword";
    fierceSword.damage = 31;
    tileFive.weapon = fierceSword;
    tileFive.actionButtonName = @"Take Sword";
    
    
    MSTile *tileSix = [[MSTile alloc] init];
    tileSix.story = @"After two days of drink and dreams, El Guapo gathered all his weapons, stitched together a set of armor and removed his eyepatch. He could look as debauched as The Tricero.";
    tileSix.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    MSArmor *graphite = [[MSArmor alloc] init];
    graphite.name = @"Graphite";
    graphite.health = 34;
    tileSix.armor = graphite;
    tileSix.actionButtonName = @"Take Armor";
    
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tileFour];
    [secondColumn addObject:tileFive];
    [secondColumn addObject:tileSix];
    
    MSTile *tileSeven = [[MSTile alloc] init];
    tileSeven.story = @"A small child peaked in at the massive El Guapo, staring into the empty socket, unblinking.";
    tileSeven.healthEffect = 23;
    tileSeven.actionButtonName = @"Follow";
    
    MSTile *tileEight = [[MSTile alloc] init];
    tileEight.story = @"El Guapo thought, 'that's just what The Tricero would do, send a small child to lure me out.'";
    tileEight.healthEffect = 14;
    tileEight.actionButtonName = @"Turn Around";
    
    MSTile *tileNine = [[MSTile alloc] init];
    tileNine.story = @"Before descending into the caves, El Guapo visited his crew at the Meridian Wonder to make sure they were preparing for a hasty escape, linens washed, sail repaired, rum full.";
    tileNine.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    MSArmor *linothorax = [[MSArmor alloc] init];
    linothorax.name = @"Linothorax";
    linothorax.health = 63;
    MSWeapon *swordOfLight = [[MSWeapon alloc] init];
    swordOfLight.name = @"Sword of Light";
    swordOfLight.damage = 63;
    tileNine.armor = linothorax;
    tileNine.weapon = swordOfLight;
    tileNine.actionButtonName = @"Super Up";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tileSeven];
    [thirdColumn addObject:tileEight];
    [thirdColumn addObject:tileNine];
    
    MSTile *tileTen = [[MSTile alloc] init];
    tileTen.story = @"He didn't believe the message carved into the anchor, did El Guapo, when they hauled up the sunken treasure chest to which the anchor glommed.";
    tileTen.healthEffect = -4;
    tileTen.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tileTen.actionButtonName = @"Take Treasure";
    
    MSTile *tileEleven = [[MSTile alloc] init];
    tileEleven.story = @"As the Meridian Wonder neared the archipelago, El Guapo would look at the anchor each night before bed, deciding he had to confirm its truth when they arrived.";
    tileEleven.healthEffect = 43;
    MSWeapon *swordOfLightning = [[MSWeapon alloc] init];
    swordOfLightning.name = @"Sword of Lightning";
    swordOfLightning.damage = 72;
    tileEleven.weapon = swordOfLightning;
    tileEleven.actionButtonName = @"Charge Sword";
    
    MSTile *tileTwelve = [[MSTile alloc] init];
    tileTwelve.story = @"The Tricero, blind and no bigger than an ale cask, was made entirely of what looked like puckering lips, which all lassoed leachlike tongues.";
    tileTwelve.healthEffect = -12;
    MSArmor *armorOfLight = [[MSArmor alloc] init];
    armorOfLight.name = @"Armor of Light";
    armorOfLight.health = 84;
    tileTwelve.armor = armorOfLight;
    tileTwelve.actionButtonName = @"Fight";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tileTen];
    [fourthColumn addObject:tileEleven];
    [fourthColumn addObject:tileTwelve];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
    
}

-(MSCharacter *)charachter;
{
    MSCharacter *character = [[MSCharacter alloc] init];
    character.health = 100;
//    character.armor.name = @"Leather";
//    character.weapon.name = @"Fists";
    MSArmor *armor = [[MSArmor alloc] init];
    armor.name = @"Leather";
    armor.health = 5;
    character.armor = armor;
    
    MSWeapon *weapon = [[MSWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

@end
