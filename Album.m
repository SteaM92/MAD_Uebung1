//
//  Album.m
//  MAD_Uebung1
//
//  Created by Markus on 10/30/14.
//  Copyright (c) 2014 Gartner&Krammer. All rights reserved.
//

#import "Album.h"

@implementation Album

+(Album*) parseDataFromDictionary:(NSDictionary *)dictionary WithArtist:(NSString *)artistName{
    Album* album = [Album new];
    
    //go through json and get first album
    NSDictionary* myalbum = [[dictionary valueForKeyPath:@"topalbums.album"] objectAtIndex:0];
    
    //set album name
    [album setAlbumName:[myalbum valueForKey:@"name"]];
    
    //set playcount
    [album setPlayCount:[myalbum valueForKey:@"playcount"]];
    
    //set artist
    [album setArtistName:artistName];
    
    return album;
}

@end
