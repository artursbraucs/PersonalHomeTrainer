//
//  Exercise.m
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 1/26/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import "Exercise.h"


@implementation Exercise

@dynamic name;
@dynamic type;
@dynamic descriptions;
@dynamic videoPath;
@dynamic createdAt;

-(void) awakeFromInsert {
    [super awakeFromInsert];
    self.createdAt = [NSDate date];
}

@end
