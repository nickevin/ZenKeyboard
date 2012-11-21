ZenKeyboard
===========

NZKeyboard is a custom iOS numeric keyboard, it's just like Square Register app.

Written by Kevin Nick(nickevin@gmail.com), November 2012.

## Usage

First you have to import the class:

	#import "ZenKeyboardView.h"
	
then simply use:
	
	ZenKeyboardView *keyboardView = [[ZenKeyboardView alloc] initWithFrame:CGRectMake(0, 0, 320, 216)];
	keyboardView.delegate = self;
  
see the demo for more detailed examples.


## Demo

You can open the demo project in Xcode and run it on your iPhone as well as in the Simulator.

<img src="https://raw.github.com/nickevin/ZenKeyboard/master/ZenKeyboard/Resource/Snapshot.png" width="320" height="480"/>


## Issues and Feature Requests

Please report issues via GitHub's issue tracker.


## ARC

This version is made using Automated Reference Counting.