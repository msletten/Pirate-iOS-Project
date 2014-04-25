//
//  MSTileFactory.h
//  Pirate
//
//  Created by Mat Sletten on 4/21/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSTile.h"
#import "MSCharacter.h"
#import "MSBoss.h"


@interface MSTileFactory : NSObject

-(NSArray *)tiles;
-(MSCharacter *)charachter;
-(MSBoss *)theTricero;

@end
