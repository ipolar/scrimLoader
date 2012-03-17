/*
  ScrimLoader.h
  bubblepuzzle
  
  Modified to run on the new Cordova (PhoneGap >1.5) framework by Andy Lyon on 17/03/2012
  
  Created by Nigel Kelly on 06/09/2011.
  Copyright 2011 Nigel Kelly. All rights reserved.
 
*/

#import <Foundation/Foundation.h>
#ifdef CORDOVA_FRAMEWORK
#import <Cordova/CDVPlugin.h>
#else
#import "CDVPlugin.h"
#endif

@interface ScrimLoader: CDVPlugin {
	NSString* callbackId;
	UIView *scrimView;
	UIActivityIndicatorView *myIndicator;
}

@property(nonatomic, copy) NSString* callbackId;
@property(nonatomic, retain) UIView* scrimView;
@property(nonatomic, retain) UIActivityIndicatorView* myIndicator;

- (void) showScrimLoader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;
- (void) dismissScrimLoader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end