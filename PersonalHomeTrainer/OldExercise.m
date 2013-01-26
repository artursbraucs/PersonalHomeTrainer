//
//  TrainerExercise.m
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 12/31/12.
//  Copyright (c) 2012 Artūrs Braučs. All rights reserved.
//

#import "OldExercise.h"

@implementation OldExercise

-(id) initWithName:(NSString *)name description:(NSString *)description videoPath:(NSString *)videoPath date:(NSDate *)date
{
    self = [super init];
    if (self) {
        _name = name;
        _description = description;
        _videoPath = videoPath;
        _date = date;
    }
    return self;
}

@end
