//
//  DisplayViewController.h
//  MAD_Uebung1
//
//  Created by Markus on 10/30/14.
//  Copyright (c) 2014 Gartner&Krammer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Album.h"
#import "AlbumDelegate.h"

@interface DisplayViewController : UIViewController <AlbumDelegate>

@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UILabel *albumLabel;
@property (weak, nonatomic) IBOutlet UILabel *playCountLabel;

@property (strong, nonatomic) Album* album;

@end
