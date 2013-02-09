//
//  Workout.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 2/9/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Workout : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSOrderedSet *workoutExercises;
@end

@interface Workout (CoreDataGeneratedAccessors)

- (void)insertObject:(NSManagedObject *)value inWorkoutExercisesAtIndex:(NSUInteger)idx;
- (void)removeObjectFromWorkoutExercisesAtIndex:(NSUInteger)idx;
- (void)insertWorkoutExercises:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeWorkoutExercisesAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInWorkoutExercisesAtIndex:(NSUInteger)idx withObject:(NSManagedObject *)value;
- (void)replaceWorkoutExercisesAtIndexes:(NSIndexSet *)indexes withWorkoutExercises:(NSArray *)values;
- (void)addWorkoutExercisesObject:(NSManagedObject *)value;
- (void)removeWorkoutExercisesObject:(NSManagedObject *)value;
- (void)addWorkoutExercises:(NSOrderedSet *)values;
- (void)removeWorkoutExercises:(NSOrderedSet *)values;
@end
