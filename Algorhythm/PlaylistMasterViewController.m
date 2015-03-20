//
//  ViewController.m
//  Algorhythm
//
//  Created by YANA SMIRNOVA on 20/03/2015.
//  Copyright (c) 2015 YANA SMIRNOVA. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];
    [self.aButton setTintColor:[UIColor redColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showPlaylistDetail"]) {
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistDetailController.segueLabelText = @"Yay! You've pressed the button";
    }
}

@end
