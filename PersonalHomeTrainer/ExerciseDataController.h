//
//  TrainerExerciseDataController.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 12/31/12.
//  Copyright (c) 2012 Artūrs Braučs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Exercise.h"

@interface ExerciseDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterTrainerExerciseList;

- (NSUInteger)countOfList;
- (Exercise *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addTrainerExerciseWithExcercise:(Exercise *)exercise;
@end
