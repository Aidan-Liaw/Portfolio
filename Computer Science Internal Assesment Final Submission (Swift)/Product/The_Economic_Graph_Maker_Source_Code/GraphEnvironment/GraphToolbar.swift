//
//  graphToolbar.swift
//  test3
//
//

import Cocoa

// A class containing the methods of the graph editor toolbar
class GraphToolbar: NSToolbar {
	
	// A function that is linked to the pen draw toolbar item
	// "_sender" means that the sender (which can be any data type as the "Any" data type is a wrapper that all types, classes, protocols, objects, structs, enums, and other variables and structures in Swift conform to
	// The use of "_" means that this label does not need to be written when parsing in anything the programmer wants into the function
	// This parameter is standard for functions that are called, whether by an interactive UI element, or by a selector
	@IBAction func penDrawAction (_sender: Any) {
		if (GraphView.actionInt == 0) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 0
			GraphEnvironmentViewController.actionInt = 0
		}
	}
	
	// A function that is linked to the straight line toolbar item
	@IBAction func straightLineAction (_sender: Any) {
		if (GraphView.actionInt == 1) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 1
			GraphEnvironmentViewController.actionInt = 1
		}
	}
	
	// A function that is linked to the curved line toolbar item
	@IBAction func curvedLineAction (_sender: Any) {
		if (GraphView.actionInt == 2) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 2
			GraphEnvironmentViewController.actionInt = 2
		}
	}
	
	
	// A function that is linked to text toolbar item
	@IBAction func textItemAction (_sender: Any) {
		if (GraphView.actionInt == 3) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 3
			GraphEnvironmentViewController.actionInt = 3
		}
	}
	
	// A function that is linked to the delete toolbar item
	@IBAction func deleteItemAction(_sender: Any) {
		if (GraphView.actionInt == 7) {
			GraphView.actionInt = -1
			GraphEnvironmentViewController.actionInt = -1
		} else {
			GraphView.actionInt = 7
			GraphEnvironmentViewController.actionInt = 7
		}
	}
	
	// Data refers to a data type of raw bytes in memory
	// As such, it is important to keep track of what type of data is being stored when the Data data type is used
	// In this scenario, PDF data is being stored to the variable
	// This variable is an optional as the variable may not always have something stored inside of it, as the graph view may not have been initialised
	static var graphViewToSave : Data?
	
	// A function that is linked to the save toolbar item
	@IBAction func saveAction (_sender: Any) {
		
		// The panel is first saved to a variable, to allow for changes in attributes, and later invocation
		let savePanel = NSOpenPanel()
		savePanel.canCreateDirectories = true
		savePanel.allowsMultipleSelection = false
		savePanel.canChooseDirectories = true
		savePanel.canChooseFiles = false
		
		// The panel's function is invoked as a closure, whereby "result" is the variable that holds the results of the user interactions. As functions are meant to have return types, the use of -> symbolises that this closure returns nothing after finished
		savePanel.begin { (result) -> Void in
			// An if statement that is true if the user clicks on the OK button within the panel
			if result.rawValue == NSApplication.ModalResponse.OK.rawValue {
				// The directory that the user plans to save in
				let saveLocationURL = savePanel.directoryURL
				
				// The directory and the file name combined. The line below will yield the directory + "Untitled.tiff", as the user has not and cannot enter a name for the file into the name field, as Open Panels do not have that
				// ".tiff" is appended to the end of the file name to ensure that no matter happens, the file will always save as a TIFF file image
				let fileName = saveLocationURL?.appendingPathComponent(savePanel.nameFieldStringValue + ".tiff")
				
				// The byte data is created based on PDF data from "graphViewToSave", and then converted to a TIFF image file representation, before it is converted back to bytes for later writing
				let TIFFImage = Data((NSImage.init(data: GraphToolbar.graphViewToSave!)?.tiffRepresentation)!)
				
				// A structure that can handle errors thrown from statements that can throw errors
				do {
					// Attempts to write the TIFF image file to the desired directory
					try TIFFImage.write(to: fileName!)
				} catch {
					// For internal debugging. It is not seen by the end user
					print(error)
					
				}
				return
			// An if statement that is true if the user clicks on the Cancel button within the panel
			} else if result.rawValue == NSApplication.ModalResponse.cancel.rawValue {
				return
			}
		}
	}
	
}
