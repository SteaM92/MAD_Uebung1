//
//  ViewController.m
//  MAD_Uebung1
//
//  Created by Markus on 10/30/14.
//  Copyright (c) 2014 Gartner&Krammer. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "DisplayViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)retrieveButton:(id)sender {
    if([[self.artistTextField text] length] > 0){
        
        [self getJSONFromServerWithArtist: [self.artistTextField text]];
        
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Please enter a text"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (void)getJSONFromServerWithArtist:(NSString *)artistName {
    // 1
    NSString *string = [NSString stringWithFormat:
                        @"http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&api_key=a65d06953de344d726c8f5a324f2aaad&format=json&artist=%@"
                        , [artistName stringByReplacingOccurrencesOfString:@" " withString:@"+"] ];
    
    NSURL *url = [NSURL URLWithString:string];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    // 2
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        // 3
        //get displayViewController from Storyboard
        DisplayViewController* displayViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"displayViewControllerID"];
        
        //give Album responseObject which returns us an Album, give this Album to displayViewController
        [displayViewController setAlbum:[Album parseDataFromDictionary:(NSDictionary *)responseObject WithArtist:artistName]];
        
        //set new View to displayViewController
        [[self navigationController] pushViewController:displayViewController animated:(YES)];

        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        // 4
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Data"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];
    
    // 5
    [operation start];}
@end
