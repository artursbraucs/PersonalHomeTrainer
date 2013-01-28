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

@interface ExerciseDetailViewController : UIViewController <LBYouTubePlayerControllerDelegate> {
    LBYouTubePlayerController* controller;
}

@property (nonatomic, strong) Exercise *currentExercise;

@property (weak, nonatomic) IBOutlet UITextView *textArea;

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionsField;
@property (weak, nonatomic) IBOutlet UITextField *typeField;
@property (weak, nonatomic) IBOutlet UITextField *videoPathField;

@property (nonatomic, strong) LBYouTubePlayerController* videoController;

@end