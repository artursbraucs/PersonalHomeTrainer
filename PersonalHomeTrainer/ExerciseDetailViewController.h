//
//  ExerciseDetailsViewController.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 1/19/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LBYouTube.h"
#import "Exercise.h"
#import "AddExerciseTableViewController.h"

@interface ExerciseDetailViewController : UIViewController <LBYouTubePlayerControllerDelegate, AddExerciseTableViewControllerDelegate> {
    LBYouTubePlayerController* controller;
}

@property (nonatomic, strong) Exercise *currentExercise;

@property (weak, nonatomic) IBOutlet UITextView *textArea;

@property (nonatomic, strong) LBYouTubePlayerController* videoController;

@end