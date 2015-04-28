//
//  SBRFirstViewController.m
//  SBRNetworking
//
//  Created by Kingfisher on 4/19/15.
//  Copyright (c) 2015 __ASU__. All rights reserved.
//

#import "SBRFirstViewController.h"
#import "SBRNetworking.h"

@interface SBRFirstViewController ()

@end

@implementation SBRFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) getButtonClicked:(id)sender {
    [[SBRNetworking sharedManager] sendDataRequestForURL:[NSURL URLWithString:@"https://itunes.apple.com/lookup?id=909253"]
                                             withSuccess:^(NSDictionary *responseData) {
                                                 
    }];
}

@end
