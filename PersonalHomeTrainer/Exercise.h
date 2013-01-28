//
//  Exercise.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 1/26/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Exercise : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSString * descriptions;
@property (nonatomic, retain) NSString * videoPath;
@property (nonatomic, retain) NSDate * createdAt;


@end
