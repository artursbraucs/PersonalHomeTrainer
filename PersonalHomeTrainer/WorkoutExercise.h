//
//  WorkoutExercise.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 2/9/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Exercise, Workout;

@interface WorkoutExercise : NSManagedObject

@property (nonatomic, retain) NSNumber * order;
@property (nonatomic, retain) NSNumber * duration;
@property (nonatomic, retain) NSNumber * rounds;
@property (nonatomic, retain) Exercise *exercise;
@property (nonatomic, retain) Workout *workout;

@end
