//
//  TrainerAppDelegate.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 12/28/12.
//  Copyright (c) 2012 Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TrainerAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
