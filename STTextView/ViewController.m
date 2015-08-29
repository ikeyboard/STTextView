//
//  ViewController.m
//  STTextView
//
//  Created by LE QUY SANG on 8/29/15.
//  Copyright (c) 2015 LE QUY SANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *nonEditableTextView;
@property (weak, nonatomic) IBOutlet UITextView *editableTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.editableTextView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textViewDidChange:(UITextView *)textView{
    self.nonEditableTextView.text = self.editableTextView.text;
}

@end
