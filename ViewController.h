//
//  ViewController.h
//  PickerLotto
//
//  Created by kefgeapp on 30.10.2012.
//  Copyright (c) 2012 kefgeapp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

<UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel *prompt;
@property (nonatomic, weak) IBOutlet UIPickerView *picker;

- (IBAction)checkEntry:(UIButton *)sender;

@end