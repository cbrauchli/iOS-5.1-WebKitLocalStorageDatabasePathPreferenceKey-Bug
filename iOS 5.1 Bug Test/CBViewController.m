//
//  CBViewController.m
//  iOS 5.1 Bug Test
//
//  Created by Chris Brauchli on 3/14/12.
//  Copyright (c) 2012 Chris Brauchli. All rights reserved.
//

#import "CBViewController.h"

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  NSLog(@"Creating UIWebView...");
  UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
  [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://google.com"]]];
  
  [self.view addSubview:webView];
  
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  
  defaults = [NSUserDefaults standardUserDefaults];
  NSDictionary *dict = [defaults dictionaryRepresentation];
  
  NSLog(@"Current user defaults = %@", [dict description]);
  
  NSLog(@"Deleting NSUserDefualts...");
  NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
  [defaults removePersistentDomainForName:appDomain];
  
  // [defaults synchronize]; // Makes no difference
  
  [webView removeFromSuperview];
  
  webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
  [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://google.com"]]];
  
  [self.view addSubview:webView];
}

- (void)viewDidUnload
{
  [super viewDidUnload];
  // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
