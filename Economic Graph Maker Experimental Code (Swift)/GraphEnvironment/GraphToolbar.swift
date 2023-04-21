//
//  graphToolbar.swift
//  test3
//
//  Created by Aidan Liaw on 3/3/2022.
//

import Cocoa

extension NSToolbarItem.Identifier {
	static let colourItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "NSToolbarShowColorsItem")
	static let printItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "NSToolbarPrintItem")
	static let spaceItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "NSToolbarSpaceItem")
	static let flexibleSpaceItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "NSToolbarFlexibleSpaceItem")
	static let penDrawItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "penDrawItem")
	static let straightLineID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "straightLineItem")
	static let curvedLineID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "curvedLineItem")
	static let textDrawID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "textDrawItem")
	static let selectItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "selectItem")
	static let undoItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "undoItem")
	static let redoItemID : NSToolbarItem.Identifier = NSToolbarItem.Identifier(rawValue: "redoItem")
}

func toolbarAllowedItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier] {
	return [ NSToolbarItem.Identifier.colourItemID,
			 NSToolbarItem.Identifier.printItemID,
			 NSToolbarItem.Identifier.spaceItemID,
			 NSToolbarItem.Identifier.flexibleSpaceItemID,
			 NSToolbarItem.Identifier.penDrawItemID,
			 NSToolbarItem.Identifier.straightLineID,
			 NSToolbarItem.Identifier.curvedLineID,
			 NSToolbarItem.Identifier.textDrawID,
			 NSToolbarItem.Identifier.selectItemID,
			 NSToolbarItem.Identifier.undoItemID,
			 NSToolbarItem.Identifier.redoItemID ]
}

func toolbarDefaultItemIdentifiers(_ toolbar: NSToolbar) -> [NSToolbarItem.Identifier] {
	return [.penDrawItemID, .straightLineID, .curvedLineID, .textDrawID, .selectItemID, .undoItemID, .redoItemID, .printItemID]
}

@IBDesignable
class GraphToolbar: NSToolbar {
	
	@IBAction func penDrawAction (_sender: Any) {
		if (GraphView.actionInt == 0) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 0
			GraphEnvironmentViewController.actionInt = 0
		}
	}
	
	@IBAction func straightLineAction (_sender: Any) {
		if (GraphView.actionInt == 1) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 1
			GraphEnvironmentViewController.actionInt = 1
		}
	}
	
	@IBAction func curvedLineAction (_sender: Any) {
		if (GraphView.actionInt == 2) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 2
			GraphEnvironmentViewController.actionInt = 2
		}
	}
	
	@IBAction func textItemAction (_sender: Any) {
		if (GraphView.actionInt == 3) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 3
			GraphEnvironmentViewController.actionInt = 3
		}
	}

	@IBAction func selectAction (_sender: Any) {
		if (GraphView.actionInt == 4) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 4
			GraphEnvironmentViewController.actionInt = 4
		}
	}
	
	@IBAction func undoAction (_sender: Any) {
		GraphView.actionInt = 5
		GraphView.changeGraphObjectsArray = true
		GraphEnvironmentViewController.actionInt = 5
		perform(#selector(GraphView.undoGraphObjectFunc))
//		ViewController.invokeUndo()
	}
	
	@IBAction func redoAction (_sender: Any) {
		GraphView.actionInt = 6
		GraphView.changeGraphObjectsArray = true
		GraphEnvironmentViewController.actionInt = 6
		perform(#selector(GraphView.redoGraphObjectFunc))
//		ViewController.invokeRedo()
	}
	
	static var CGContextToSave : Data?
	
	@IBAction func saveAction (_sender: Any) {
		
		let savePanel = NSSavePanel()
//		savePanel.allowedFileTypes = [".tiff", ".png", ".jpg"]
//		savePanel.allowsOtherFileTypes = false
		savePanel.canCreateDirectories = false
//		savePanel.canChooseFiles = false
				
		savePanel.begin { (result) -> Void in
			if result.rawValue == NSApplication.ModalResponse.OK.rawValue {
				let saveLocationURL = savePanel.directoryURL
//				self.perform(#selector(GraphView.getCGContext), with: self, afterDelay: TimeInterval.init())
				
				let fileName = saveLocationURL?.appendingPathComponent(savePanel.nameFieldStringValue + ".tiff")
				print(saveLocationURL?.appendingPathComponent(savePanel.nameFieldStringValue + ".tiff") as Any)
				print(fileName!.absoluteString)
				print(fileName!.relativeString)
				let TIFFImage = Data((NSImage.init(data: GraphToolbar.CGContextToSave!)?.tiffRepresentation)!)
				
				do {
					let openPanel = NSOpenPanel()
					openPanel.allowsMultipleSelection = false
					openPanel.canChooseDirectories = true
					openPanel.begin { (result) -> Void in do { try TIFFImage.write(to: fileName!) } catch { print(error) } }
				} catch {
					// failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
					print(error)
					
				}

				
				return
			} else if result.rawValue == NSApplication.ModalResponse.cancel.rawValue {
				return
			}
		}
	}
	
}
