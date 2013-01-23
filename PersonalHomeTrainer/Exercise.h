//
//  TrainerExercise.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 12/31/12.
//  Copyright (c) 2012 Artūrs Braučs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exercise : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *description;
@property (nonatomic, copy) NSString *videoPath;
@property (nonatomic, strong) NSDate *date;

-(id) initWithName:(NSString *)name description:(NSString *)description videoPath:(NSString *)videoPath date:(NSDate *)date;
@end
