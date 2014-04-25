//
//  MSTile.h
//  Pirate
//
//  Created by Mat Sletten on 4/21/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSTileFactory.h"
#import "MSCharacter.h"
#import "MSArmor.h"
#import "MSWeapon.h"

@interface MSTile : NSObject

@property (strong,nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) MSWeapon *weapon;
@property (strong, nonatomic) MSArmor *armor;
@property (nonatomic) int healthEffect;




@end
