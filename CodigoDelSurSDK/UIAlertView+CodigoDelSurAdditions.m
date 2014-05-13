//
//  UIAlertView+CodigoDelSurAdditions.m
//  CodigoDelSurSDK
//
//  Created by Nicolas Jakubowski on 5/13/14.
//  Copyright (c) 2014 CodigoDelSur. All rights reserved.
//

#import "UIAlertView+CodigoDelSurAdditions.h"

@implementation UIAlertView (CodigoDelSurAdditions)

+ (UIAlertView*)showAlertViewWithMessage:(NSString*)message
{
    return [self showAlertViewWithMessage:message title:nil];
}

+ (UIAlertView*)showAlertViewWithMessage:(NSString *)message title:(NSString*)title
{
    return [self showAlertViewWithMessage:message title:title delegate:nil];
}

+ (UIAlertView*)showAlertViewWithMessage:(NSString *)message title:(NSString *)title delegate:(id)delegate
{
    return [self showAlertViewWithMessage:message title:title delegate:delegate cancelButtonTitle:nil otherButtonTitles:nil];
}

+ (UIAlertView*)showYesNoAlertViewWithMessage:(NSString *)message title:(NSString *)title delegate:(id)delegate
{
    return [self showAlertViewWithMessage:message title:title delegate:delegate cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
}

+ (UIAlertView*)showOkCancelAlertViewWithMessage:(NSString *)message title:(NSString *)title delegate:(id)delegate
{
    return [self showAlertViewWithMessage:message title:title delegate:delegate cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
}

+ (UIAlertView*)showContinueCancelAlertViewWithMessage:(NSString *)message title:(NSString *)title delegate:(id)delegate
{
    return [self showAlertViewWithMessage:message title:title delegate:delegate cancelButtonTitle:@"Cancel" otherButtonTitles:@"Continue", nil];
}

#pragma mark - Private

+ (UIAlertView*)showAlertViewWithMessage:(NSString *)message
                                   title:(NSString *)title
                                delegate:(id)delegate
                       cancelButtonTitle:(NSString*)cancelButtonTitle
                       otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                        message:message
                                                       delegate:delegate
                                              cancelButtonTitle:cancelButtonTitle
                                              otherButtonTitles:otherButtonTitles, nil];
    [alertView show];
    return alertView;
}

@end
