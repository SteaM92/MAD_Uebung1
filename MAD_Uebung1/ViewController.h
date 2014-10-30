//
//  ViewController.h
//  MAD_Uebung1
//
//  Created by Markus on 10/30/14.
//  Copyright (c) 2014 Gartner&Krammer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *artistTextField;

- (IBAction)retrieveButton:(id)sender;

- (void)getJSONFromServerWithArtist: (NSString*) artistName;

@end

