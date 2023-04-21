//
//  WindowController.swift
//  test3
//
//  Created by Aidan Liaw on 11/3/2022.
//

import Cocoa

//extension NSToolbarItem.Identifier {
//	static let colourItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "NSToolbarShowColorsItem")
//	static let printItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "NSToolbarPrintItem")
//	static let spaceItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "NSToolbarSpaceItem")
//	static let flexibleSpaceItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "NSToolbarFlexibleSpaceItem")
//	static let penDrawItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "penDrawItem")
//	static let straightLineID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "straightLineItem")
//	static let curvedLineID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "curvedLineItem")
//	static let textDrawID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "textDrawItem")
//	static let selectItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "selectItem")
//	static let undoItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "undoItem")
//	static let redoItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "redoItem")
//}
//
//func toolbarAllowedItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier] {
//	return [ NSToolbarItem.Identifier.colourItemID,
//			 NSToolbarItem.Identifier.printItemID,
//			 NSToolbarItem.Identifier.spaceItemID,
//			 NSToolbarItem.Identifier.flexibleSpaceItemID,
//			 NSToolbarItem.Identifier.penDrawItemID,
//			 NSToolbarItem.Identifier.straightLineID,
//			 NSToolbarItem.Identifier.curvedLineID,
//			 NSToolbarItem.Identifier.textDrawID,
//			 NSToolbarItem.Identifier.selectItemID,
//			 NSToolbarItem.Identifier.undoItemID,
//			 NSToolbarItem.Identifier.redoItemID ]
//}
//
//func toolbarDefaultItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier] {
//	return [.penDrawItemID, .straightLineID, .curvedLineID, .textDrawID, .selectItemID, .undoItemID, .redoItemID, .printItemID]
//}

class WindowController: NSWindowController, NSToolbarDelegate {
	@IBOutlet var windowToolbar : GraphToolbar!
	
	
	
	override func windowTitle(forDocumentDisplayName displayName : String) -> String {
		return "Economics Graph Maker"
	}
	
    override func windowDidLoad() {
        super.windowDidLoad()
		
//		self.contentViewController = WelcomeViewController()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
}
