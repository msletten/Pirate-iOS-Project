//
//  MSCharacter.h
//  Pirate
//
//  Created by Mat Sletten on 4/21/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSWeapon.h"
#import "MSArmor.h"

@interface MSCharacter : NSObject

@property (nonatomic) int health;
@property (nonatomic) int damage;
@property (strong, nonatomic) MSWeapon *weapon;
@property (strong, nonatomic) MSArmor *armor;

@end
