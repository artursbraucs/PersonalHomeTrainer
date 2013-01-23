//
//  ExerciseDetailsViewController.h
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 1/19/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LBYouTube.h"

@class Exercise;

@interface ExerciseDetailViewController : UIViewController <LBYouTubePlayerControllerDelegate> {
    LBYouTubePlayerController* controller;
}

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) Exercise *exercise;

@property (nonatomic, strong) LBYouTubePlayerController* controller;

@end