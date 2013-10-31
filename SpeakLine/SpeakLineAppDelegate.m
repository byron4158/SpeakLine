//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by Byron Kwok on 10/31/13.
//  Copyright (c) 2013 iPluris. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

@synthesize window = _window;
@synthesize textField = _textField;

- (id)init
{
    self = [super init];
    if (self) {
        //Logs can help the beginner understand
        //is happening and hunt down bugs.
        NSLog(@"init");
        
        //Create a new instance of NSSpeechSynthesizer
        //with the default voice.
        _speechSynth = [[NSSpeechSynthesizer alloc]
                        initWithVoice:nil];
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)stopIt:(id)sender
{
    NSLog(@"stopping");
    [_speechSynth stopSpeaking];
}

- (IBAction)sayIt:(id)sender
{
    NSString * string = [_textField stringValue];
    
    //Is the string zero-length?
    if ([string length] == 0) {
        NSLog(@"string from %@ is of zero-length", _textField);
        return;
    }
    [_speechSynth startSpeakingString:string];
    NSLog(@"Have started to say: %@", string);
}



@end
