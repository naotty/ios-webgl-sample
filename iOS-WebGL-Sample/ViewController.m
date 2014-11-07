//
//  ViewController.m
//  iOS-WebGL-Sample
//
//  Created by tnaototo on 2014/11/07.
//  Copyright (c) 2014年 tnaototo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.myWebView.delegate = self;
    NSURL *url = [NSURL URLWithString:@"http://aleksandarrodic.com/p/jellyfish/"]; // クラゲ
//    NSURL *url = [NSURL URLWithString:@"http://tmlife-storage.googlecode.com/svn/trunk/gl-enchant-js/model-viewer/index.html"]; // gl-enchant.js
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.myWebView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
