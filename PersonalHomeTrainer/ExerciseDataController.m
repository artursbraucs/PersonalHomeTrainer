//
//  TrainerExerciseDataController.m
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 12/31/12.
//  Copyright (c) 2012 Artūrs Braučs. All rights reserved.
//

#import "ExerciseDataController.h"
#import "Exercise.h"

@interface ExerciseDataController ()
- (void)initializeDefaultDataList;
@end

@implementation ExerciseDataController

- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

- (void)initializeDefaultDataList {
    NSMutableArray *exerciseList = [[NSMutableArray alloc] init];
    self.masterTrainerExerciseList = exerciseList;
    Exercise *exercise;
    NSDate *today = [NSDate date];
    exercise = [[Exercise alloc] initWithName:@"Pushup" description:@"Push up is the chest exercise ideal for make easy and quick chest workout to do at home. If you want know how to push up, just see the video instructions, training your pectoralis major and pectoralis minor with best upper pec exercise and add it in your chest workout." videoPath:@"http://www.youtube.com/watch?v=A6Q7wsAV4OY" date:today];
    [self addTrainerExerciseWithExcercise:exercise];
    
    Exercise *exercise2;

    exercise2 = [[Exercise alloc] initWithName:@"ABS" description:@"Alternating beat is an effective exercise for lower abs. You can perform this exercise at home or in gym, just remember to keep legs off the ground so your lower abs muscles will be tense during the exercise." videoPath:@"http://www.youtube.com/watch?v=wq45EYyH02w" date:today];
    [self addTrainerExerciseWithExcercise:exercise2];

}

- (void)setMasterTrainerExerciseList:(NSMutableArray *)newList {
    if (_masterTrainerExerciseList != newList) {
        _masterTrainerExerciseList = [newList mutableCopy];
    }
}

- (NSUInteger)countOfList {
    return [self.masterTrainerExerciseList count];
}

- (Exercise *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterTrainerExerciseList objectAtIndex:theIndex];
}

- (void)addTrainerExerciseWithExcercise:(Exercise *)exercise {
    [self.masterTrainerExerciseList addObject:exercise];
}

@end
