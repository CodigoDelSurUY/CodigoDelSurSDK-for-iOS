//
//  UIAlertView+CodigoDelSurAdditions.h
//  CodigoDelSurSDK
//
//  Created by Nicolas Jakubowski on 5/13/14.
//  Copyright (c) 2014 CodigoDelSur. All rights reserved.
//

#import <UIKit/UIAlertView.h>

@interface UIAlertView (CodigoDelSurAdditions)

/**
 *  Shows a simple Ok message
 *
 *  @param message The message to show
 *
 *  @return The UIAlertView object that was presented
 */
+ (UIAlertView*)showAlertViewWithMessage:(NSString*)message;

/**
 *  Shows a simple Ok message with a title
 *
 *  @param message The message to show
 *  @param title   The title to show
 *
 *  @return The UIAlertView object that was presented
 */
+ (UIAlertView*)showAlertViewWithMessage:(NSString *)message title:(NSString*)title;

/**
 *  Shows a simple Ok message with title
 *
 *  @param message  The message to show
 *  @param title    The title to show
 *  @param delegate The UIAlertView delegate
 *
 *  @return The UIAlertView object that was presented
 */
+ (UIAlertView*)showAlertViewWithMessage:(NSString *)message title:(NSString *)title delegate:(id)delegate;

/**
 *  Shows a simple Yes/No message with title
 *
 *  @param message  The message to show
 *  @param title    The title to show
 *  @param delegate The UIAlertView delegate
 *
 *  @return The presented UIAlertView
 */
+ (UIAlertView*)showYesNoAlertViewWithMessage:(NSString *)message title:(NSString *)title delegate:(id)delegate;

/**
 *  Shows a simple Ok/Cancel message with title
 *
 *  @param message  The message to show
 *  @param title    The title to show
 *  @param delegate The UIAlertView delegate
 *
 *  @return The presented UIAlertView
 */
+ (UIAlertView*)showOkCancelAlertViewWithMessage:(NSString *)message title:(NSString *)title delegate:(id)delegate;

/**
 *  Shows a simple Continue/Cancel message with title
 *
 *  @param message  The message to show
 *  @param title    The title to show
 *  @param delegate The UIAlertView delegate
 *
 *  @return The presented UIAlertView
 */
+ (UIAlertView*)showContinueCancelAlertViewWithMessage:(NSString *)message title:(NSString *)title delegate:(id)delegate;

@end
