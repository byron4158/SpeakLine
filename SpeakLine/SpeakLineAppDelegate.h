//
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by Byron Kwok on 10/31/13.
//  Copyright (c) 2013 iPluris. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate>
{
    NSSpeechSynthesizer *_speechSynth;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;


- (IBAction)stopIt:(id)sender;
- (IBAction)sayIt:(id)sender;

@end
