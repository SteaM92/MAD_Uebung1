//
//  DisplayViewController.m
//  MAD_Uebung1
//
//  Created by Markus on 10/30/14.
//  Copyright (c) 2014 Gartner&Krammer. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    //only if album not null
    if(self.album != nil){
        //set albumLabel
        [self.albumLabel setText:[self.album albumName]];
        
        //set playcount
        [self.playCountLabel setText:[self.album playCount]];
        
        //set artist
        [self.artistLabel setText:[self.album artistName]];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
