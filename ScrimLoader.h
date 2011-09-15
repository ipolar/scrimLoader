/*
  ScrimLoader.h
  bubblepuzzle

 Created by Nigel Kelly on 06/09/2011.
Copyright 2011 Nigel Kelly. All rights reserved.
 
*/ 


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PhoneGapCommand.h"


@interface ScrimLoader: PhoneGapCommand {
	
	UIView *scrimView;
	UIActivityIndicatorView *myIndicator;
}

@property(nonatomic, retain) UIView* scrimView;
@property(nonatomic, retain) UIActivityIndicatorView* myIndicator;

- (void) showScrimLoader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;
- (void) dismissScrimLoader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end


