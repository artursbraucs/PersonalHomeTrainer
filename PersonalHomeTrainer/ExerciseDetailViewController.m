//
//  ExerciseDetailsViewController.m
//  PersonalHomeTrainer
//
//  Created by Artūrs Braučs on 1/19/13.
//  Copyright (c) 2013 Artūrs Braučs. All rights reserved.
//

#import "ExerciseDetailViewController.h"
#import "OldExercise.h"
#import <MediaPlayer/MediaPlayer.h>
#import "LBYouTube.h"

@interface ExerciseDetailViewController ()
- (void)configureView;
- (void)playVideo;
@end

@implementation ExerciseDetailViewController

@synthesize videoController;

- (void)dealloc {
    self.videoController.delegate = nil;
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
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureView
{
    self.nameField.text = [self.currentExercise name];
    self.typeField.text = [self.currentExercise type];
    self.descriptionsField.text = [self.currentExercise descriptions];
    self.videoPathField.text = [self.currentExercise videoPath];

    if (self.currentExercise.description.length) {
        self.textArea.text = [self.currentExercise descriptions];
    } else {
        self.textArea.text = [self.currentExercise name];
    }
    if (self.currentExercise.videoPath.length) {
        [self playVideo];
    }
}

- (void)playVideo {
    self.videoController = [[LBYouTubePlayerController alloc] initWithYouTubeURL:[NSURL URLWithString:[self.currentExercise videoPath]] quality:LBYouTubeVideoQualityLarge];
    self.videoController.delegate = self;
    
    self.videoController.view.frame = CGRectMake(0.0f, 0.0f, self.view.frame.size.width, 200.0f);
    self.videoController.view.center = self.view.center;
    [self.view addSubview:self.videoController.view];
}

#pragma mark -
#pragma mark LBYouTubePlayerViewControllerDelegate
-(void)youTubePlayerViewController:(LBYouTubePlayerController *)controller didSuccessfullyExtractYouTubeURL:(NSURL *)videoURL {
}

-(void)youTubePlayerViewController:(LBYouTubePlayerController *)controller failedExtractingYouTubeURLWithError:(NSError *)error {
}

@end
