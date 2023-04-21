//
//  AppDelegate.swift
//  Economic Graph Maker Version 2
//
//

import Cocoa

// Indicates that this class is the entry point for program execution.
@main
// Identifiers after the colon are the class that AppDelegate is subclassing, followed by the protocol that it his implementing, in this case, NSApplicationDelegate, which allows AppDelegate to utilise functions to control the functionality and behaviour of the application.
class AppDelegate: NSObject, NSApplicationDelegate {

	// A function that is called once the program finishes launching
	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Insert code here to initialize your application
	}

	// A function that is called after the program has been called to terminate
	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}

	// A function that is called to state that this application supports the use of persistance storage to allow the app to be restored to its previous state securely when the application is terminated
	func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
		return true
	}
}

