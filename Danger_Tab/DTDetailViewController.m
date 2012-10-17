//
//  DTDetailViewController.m
//  Danger_Tab
//
//  Created by rbelford on 10/15/12.
//  Copyright (c) 2012 rbelford. All rights reserved.
//

#import "DTDetailViewController.h"

@interface DTDetailViewController ()
- (void)configureView;
@end

@implementation DTDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = (NSString *) @"Detailed info for the danger"; //newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
