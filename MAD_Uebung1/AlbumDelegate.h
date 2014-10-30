//
//  AlbumDelegate.h
//  MAD_Uebung1
//
//  Created by Markus on 10/30/14.
//  Copyright (c) 2014 Gartner&Krammer. All rights reserved.
//

#ifndef MAD_Uebung1_AlbumDelegate_h
#define MAD_Uebung1_AlbumDelegate_h

#import "Album.h"

@protocol AlbumDelegate <NSObject>

-(void) setAlbum:(Album*) album;

@end

#endif

