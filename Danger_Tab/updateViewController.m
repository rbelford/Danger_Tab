//
//  updateViewController.m
//  Danger_Tab
//
//  Created by rbelford on 10/16/12.
//  Copyright (c) 2012 rbelford. All rights reserved.
//

#import "updateViewController.h"

@interface updateViewController ()

@end

@implementation updateViewController

@synthesize Category,Long,Lat,Radius;

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
    
    self.Category = [[NSArray alloc] initWithObjects:
                     @"-All-",@"Fire",@"Tornado",@"Flood",@"Hurricane",@"Earthquake",@"Shots Fired",
                     nil];
    
    self.Long = [[NSArray alloc]initWithObjects:
                 @"Here",@"180W",@"150W",@"120W",@"90W",@"60W",@"30W",@"--0--",@"30E",@"60E",@"90E",@"120E",@"150E",@"180E",
                 nil];
    
    self.Lat = [[NSArray alloc]initWithObjects:
                @"Here",@"90N",@"75N",@"60N",@"45N",@"30N",@"15N",@"--0--",@"15S",@"30S",@"45S",@"60S",@"75S",@"90S",
                nil];
    
    self.Radius = [[NSArray alloc]initWithObjects:
                     @"1k",@"5k",@"10k",@"25k",@"50k",@"100k",@"500k",@"1000k",@"5000k",
                     nil]; 
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 4;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    //NSLog(@"in row width");
    switch (component)
    {
        case 0: // category
            return 110;
            break;
        case 1: // Long
            return 70;
            break;
        case 2: // Lat
            return 65;
            break;
        case 3: // Radius
            return 60;
            break;
        default:
            return 0;
            break;
    }
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    //NSLog(@"in row height");
    return 35;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (component)
    {
        case 0:
            return [Category count];
            break;
        case 1:
            return [Long count];
            break;
        case 2:
            return [Lat count];
            break;
        case 3:
            return [Radius count];
            break;
        default:
            return 0;
            break;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    switch (component)
    {
        case 0:
            return [Category objectAtIndex:row];
            break;
        case 1:
            return [Long objectAtIndex:row];
            break;
        case 2:
            return [Lat objectAtIndex:row];
            break;
        case 3:
            return [Radius objectAtIndex:row];
            break;
        default:
            return @"Error";
            break;
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
    NSLog(@"Update selection: row=%d component=%d",row,component);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
