//
//  ViewController.m
//  Picky
//
//  Created by God on 2/13/15.
//  Copyright (c) 2015 God. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize modePicker;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    bhava = [[NSArray alloc] initWithObjects:@"देवता", @"असुर", @"भूतप्रेत",  nil];
    bhojan = [[NSArray alloc] initWithObjects:@"रसीला", @"तीखा", @"खमीरा", nil];
    bhajan = [[NSArray alloc] initWithObjects:@"विद्धिवत्त",@"स्वार्थी", @"मनघणंत", nil];
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return [bhava count];
    } else if (component == 1) {
        return [bhojan count];
    } else {
        return [bhajan count];
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    switch (component) {
        case 0:
            return [bhava objectAtIndex:row];
            break;
        case 1:
            return [bhojan objectAtIndex:row];
            break;
        case 2:
            return [bhajan objectAtIndex:row];
            break;
        default:
            return nil;
            break;
    }
}

- (IBAction)buttonTap:(id)sender{
    NSString *bhavaPick = [NSString stringWithFormat:@"%@", [bhava objectAtIndex:[modePicker selectedRowInComponent:0]]];
    NSString *bhojanPick = [NSString stringWithFormat:@"%@", [bhojan objectAtIndex:[modePicker selectedRowInComponent:1]]];
    NSString *bhajanPick = [NSString stringWithFormat:@"%@", [bhajan objectAtIndex:[modePicker selectedRowInComponent:2]]];

    
    NSString *theVarnan = [NSString stringWithFormat:@"अाप पूजा करते है %@ की\nखाने में %@ पदार्थ पसन्द करते हैं\nव यज्ञ %@-भाव से करते हैं", bhavaPick, bhojanPick, bhajanPick];
    lblVarnan.text = theVarnan;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
