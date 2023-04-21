//
//  WindowController.swift
//  test3
//
//

import Cocoa

// Conrtols the window of the graph editing environment
class WindowController: NSWindowController, NSToolbarDelegate {
	// Creates the graph toolbar for the entire view
	@IBOutlet var windowToolbar : GraphToolbar!
	
	// Sets the window title, by returning a String literal of the window title when the function is called
	override func windowTitle(forDocumentDisplayName displayName : String) -> String {
		return "Economics Graph Maker"
	}
	
	// Runs if the window successfully loaded
    override func windowDidLoad() {
        super.windowDidLoad()
    }
}
