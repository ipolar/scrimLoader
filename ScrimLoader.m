/*
  ScrimLoader.m
  
  Modified to run on the new Cordova (PhoneGap >1.5) framework by Andy Lyon on 17/03/2012
  
  Created by Nigel Kelly on 06/09/2011.
  Copyright 2011 Nigel Kelly. All rights reserved.
*/ 

#import "ScrimLoader.h"

@implementation ScrimLoader
@synthesize scrimView;
@synthesize myIndicator;
@synthesize callbackId;

- (void) showScrimLoader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options 
{
	NSLog( @"[LOADER]		Show loader!");
	
	UIApplication* app = [UIApplication sharedApplication];
	UIWindow* appWindow = [app keyWindow];
	
	self.scrimView = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)] autorelease];
	self.scrimView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.7]; //[UIColor clearColor];
	[appWindow addSubview:self.scrimView];
	[appWindow makeKeyAndVisible];
	
	self.myIndicator = [[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge] autorelease];
	self.myIndicator.center = self.scrimView.center;
	self.myIndicator.hidesWhenStopped = NO;
	
	[self.scrimView addSubview:self.myIndicator];
	[self.myIndicator startAnimating];
}

- (void) dismissScrimLoader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options 
{
	NSLog( @"[LOADER]		Hide loader!");
	
	[self.myIndicator stopAnimating];
	[self.myIndicator removeFromSuperview];
	[self.scrimView removeFromSuperview];
}

@end