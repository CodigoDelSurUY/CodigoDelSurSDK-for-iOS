//
//  UIAlertViewTests.m
//  CodigoDelSurSDK
//
//  Created by Nicolas Jakubowski on 5/13/14.
//  Copyright (c) 2014 CodigoDelSur. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <objc/runtime.h>
#import "UIAlertView+CodigoDelSurAdditions.h"

@interface UIAlertView (ShowMethodSwizzling)

@end

@implementation UIAlertView (ShowMethodSwizzling)

+ (void)load
{
    //So, calling - [UIAlertView show] fails in a unit test environment
    //Swizzling show method to make this test pass
    Method originalShow = class_getInstanceMethod([UIAlertView class], @selector(show));
    Method swizzledShow = class_getInstanceMethod([UIAlertView class], @selector(swizzled_show));
    method_exchangeImplementations(originalShow, swizzledShow);
}

- (void)swizzled_show
{
    
}

@end

@interface UIAlertViewTests : XCTestCase

@end

@implementation UIAlertViewTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTAssertNotNil([UIAlertView showAlertViewWithMessage:nil], @"Returned UIAlertView is nil");
    XCTAssertNotNil([UIAlertView showAlertViewWithMessage:nil title:nil], @"Returned UIAlertView is nil");
    XCTAssertNotNil([UIAlertView showAlertViewWithMessage:nil title:nil delegate:nil], @"Returned UIAlertView is nil");
    XCTAssertNotNil([UIAlertView showContinueCancelAlertViewWithMessage:nil title:nil delegate:nil], @"Returned UIAlertView is nil");
    XCTAssertNotNil([UIAlertView showYesNoAlertViewWithMessage:nil title:nil delegate:nil], @"Returned UIAlertView is nil");
    XCTAssertNotNil([UIAlertView showOkCancelAlertViewWithMessage:nil title:nil delegate:nil], @"Returned UIAlertView is nil");
}

@end
