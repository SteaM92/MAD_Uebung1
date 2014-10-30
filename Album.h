//
//  Album.h
//  MAD_Uebung1
//
//  Created by Markus on 10/30/14.
//  Copyright (c) 2014 Gartner&Krammer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject

@property (strong, nonatomic) NSString *artistName;
@property (strong, nonatomic) NSString *albumName;
@property (strong, nonatomic) NSString *playCount;

+(Album*) parseDataFromDictionary:(NSDictionary*) dictionary WithArtist:(NSString*) artistName;

@end
