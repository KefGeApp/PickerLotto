//
//  ViewController.m
//  PickerLotto
//
//  Created by kefgeapp on 30.10.2012.
//  Copyright (c) 2012 kefgeapp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize prompt, picker;

#pragma mark – PickerView delegate methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 10;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"%d", row];
}

#pragma mark – Action methods

- (IBAction)checkEntry:(UIButton *)sender
{
    int winningNumber = (arc4random() % 100) ;
    int chosenNumber;
    int tens = [self.picker selectedRowInComponent:0] * 10;
    int ones = [self.picker selectedRowInComponent:1];
    chosenNumber = tens + ones;
    if (chosenNumber == winningNumber) {
        self.prompt.text = @"You Win!";
    } else {
        self.prompt.text = [NSString stringWithFormat:@"Sorry, the winning number was: %d", winningNumber];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.prompt.text = @"Choose a number…";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end