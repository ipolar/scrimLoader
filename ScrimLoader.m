/*
 ScrimLoader.m
 
 Created by Nigel Kelly on 06/09/2011.
 Copyright 2011 Nigel Kelly. All rights reserved.
 
 */ 

#import "ScrimLoader.h"


@implementation ScrimLoader
@synthesize scrimView;
@synthesize myIndicator;



- (void) showScrimLoader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options 
{
	UIApplication* app = [UIApplication sharedApplication];
	UIWindow* appWindow = [app keyWindow];
	
	self.scrimView = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)] autorelease];
	self.scrimView.backgroundColor = [UIColor clearColor];
	[appWindow addSubview:self.scrimView];
	[appWindow makeKeyAndVisible];
	
	self.myIndicator = [[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge] autorelease];
	self.myIndicator.center = CGPointMake(160, 440);
	self.myIndicator.hidesWhenStopped = NO;
	
	[self.scrimView addSubview:self.myIndicator];
	[self.myIndicator startAnimating];
	
}

- (void) dismissScrimLoader:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options 
{
		
	[self.myIndicator stopAnimating];
	
	[self.myIndicator removeFromSuperview];
	[self.scrimView removeFromSuperview];

}


@end
