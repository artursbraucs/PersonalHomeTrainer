//
//  ExerciseDetailsViewController.m
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 1/19/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import "ExerciseDetailViewController.h"
#import "Exercise.h"
#import <MediaPlayer/MediaPlayer.h>
#import "LBYouTube.h"

@interface ExerciseDetailViewController ()
- (void)configureView;
- (void)playVideo;
@end

@implementation ExerciseDetailViewController

@synthesize controller;

- (void)dealloc {
    self.controller.delegate = nil;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setExercise:(Exercise *)exercise
{
    if (_exercise != exercise) {
        _exercise = exercise;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    if (self.exercise.description.length) {
        self.nameLabel.text = self.exercise.description;
    } else {
        self.nameLabel.text = self.exercise.name;
    }
    if (self.exercise.videoPath.length) {
        [self playVideo];
    }
}

- (void)playVideo {
    self.controller = [[LBYouTubePlayerController alloc] initWithYouTubeURL:[NSURL URLWithString:self.exercise.videoPath] quality:LBYouTubeVideoQualityLarge];
    self.controller.delegate = self;
    
    self.controller.view.frame = CGRectMake(0.0f, 0.0f, self.view.frame.size.width, 300.0f);
    self.controller.view.center = self.view.center;
    [self.view addSubview:self.controller.view];
}

#pragma mark -
#pragma mark LBYouTubePlayerViewControllerDelegate
-(void)youTubePlayerViewController:(LBYouTubePlayerController *)controller didSuccessfullyExtractYouTubeURL:(NSURL *)videoURL {
}

-(void)youTubePlayerViewController:(LBYouTubePlayerController *)controller failedExtractingYouTubeURLWithError:(NSError *)error {
}

@end
