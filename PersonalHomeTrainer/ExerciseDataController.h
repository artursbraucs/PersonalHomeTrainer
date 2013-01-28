//
//  TrainerExerciseDataController.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 12/31/12.
//  Copyright (c) 2012 Artūrs Braučs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OldExercise.h"

@interface ExerciseDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterTrainerExerciseList;

- (NSUInteger)countOfList;
- (OldExercise *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addTrainerExerciseWithExcercise:(OldExercise *)exercise;
@end
