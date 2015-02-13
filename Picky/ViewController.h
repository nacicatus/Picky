//
//  ViewController.h
//  Picky
//
//  Created by God on 2/13/15.
//  Copyright (c) 2015 God. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate> {
    NSArray* bhava;
    NSArray* bhojan;
    NSArray* bhajan;
    IBOutlet UIPickerView *modePicker;
    IBOutlet UILabel *lblVarnan;
    
    
    
}

@property (nonatomic, retain) UIPickerView *modePicker;

- (IBAction)buttonTap:(id)sender;
@end
