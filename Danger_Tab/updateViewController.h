//
//  updateViewController.h
//  Danger_Tab
//
//  Created by rbelford on 10/16/12.
//  Copyright (c) 2012 rbelford. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface updateViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSArray *Category;
@property (strong, nonatomic) NSArray *Long;
@property (strong, nonatomic) NSArray *Lat;
@property (strong, nonatomic) NSArray *Radius;


@end
