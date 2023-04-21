//
//  userInteraction.swift
//  test3
//
//  Created by Aidan Liaw on 30/4/2022.
//

import Foundation
import Cocoa

extension GraphEnvironmentViewController {
	// Overrides the mouseDown function that is called when the "trackingArea" variable that belongs to "GraphEnvironmentViewController" detects a mouse click within its tracking area
	override func mouseDown(with event: NSEvent) {
		super.mouseDown(with: event)
		
		// As graph objects are drawn within "graphView"'s rectangle, with respect to "graphView"'s coordinate system, the mouse location that is taken with respect to the coordinate system of the window's primary view, is converted to coordinates with respect to the coordinate system of the target view, which in this case is "grapView"'s rectangle
		// As "graphView.window?.mouseLocationOutsideOfEventStream" may be nil, the nil coalescing operator is used so that if there exits no mouse location recorded, despite a mouse click, then the literal "CGPoint(x: 0, y: 0)" is used so that the program doesn't crash when attempting to operate on a nil value
		let pointInTargetView = self.graphView.convert(graphView.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view)
		
		// If the mouse click has occured within the graph view, then the statement is true
		if (graphView.bounds.contains(pointInTargetView)) {
			
			// If "actionInt" is equal to 7, this means that a delete operation has been attempted, which means that it does not matter if the click intersects with any text boxes
			// If the click is contained within a text box, and the user is attempting to draw something, the program stops that from happening, and allows the user to instead edit the text box
			// This is done by first creating an array that filters out only text objects, and then another function that checks to ensure that all text objects satisfy the condition that their text box does not contain the point that the user has clicked on
			if (GraphEnvironmentViewController.actionInt == 7 || graphView.GraphObjects
					.filter { $0.objectType == GraphObjectsClass.textObjectID }
						.allSatisfy{ !($0 as! TextObject).textView.frame.contains(pointInTargetView) }
			) {
				
				// Removes focus from the text boxes, stopping editing, and bringing focus to the "graphView" again
				// This is achieved by removing first responder responsibilities from the text view, which is the text box, meaning that user interactions are sent to "graphView" instead of the text objects
				(graphView.GraphObjects.filter{ $0.objectType == GraphObjectsClass.textObjectID } as! [TextObject]).forEach{ $0.textView.window?.makeFirstResponder(nil) }
				
				// If the "GraphObjects" is empty, or if the object last inserted is not the same as the new object that the user is trying to create, then the condition below is true
				if (graphView.GraphObjects.isEmpty || (objectIDToActionInt[graphView.GraphObjects.last!.objectType] != GraphEnvironmentViewController.actionInt)) {
					// The switch structure ensures that the function branches off to the correct code body to execute based on what the user is trying to do
					switch (GraphEnvironmentViewController.actionInt) {
						case (0):
							// Adds a pen draw object to the "GraphObjects" array
							graphView.GraphObjects.append(PenDrawObject.init())
							// Tells the "graphView" object that the object to now take action on is the most recently added graph object
							graphView.currentGraphObject = graphView.GraphObjects.last!
							// Calls a function to handle pen drawing
							penDrawMouseDown()
							// States that the new selected graph object is the current graph object, so that "graphView" sends a new copy of its view to the associated "GraphToolbar" object for the view controller for saving when needed
							graphView.selectedGraphObject = graphView.currentGraphObject
							break
						case (1):
							// Adds a straight line object to the "GraphObjects" array
							graphView.GraphObjects.append(StraightLineObject.init())
							graphView.currentGraphObject = graphView.GraphObjects.last!
							// Calls a function to handle the creation of a straight line object
							straightLineMouseDown()
							graphView.selectedGraphObject = graphView.currentGraphObject
							break
						case (2):
							// Adds a curved line object to the "GraphObjects" array
							graphView.GraphObjects.append(CurvedLineObject.init())
							graphView.currentGraphObject = graphView.GraphObjects.last!
							// Calls a function to handle the creation of a curved line object
							curvedLineMouseDown()
							graphView.selectedGraphObject = graphView.currentGraphObject
							break
						case (3):
							// Calls the text object creation function
							textObjectMouseDown()
							break
						default: break
					}
				// The condition below is true if the previous graph object type added correlates to the action integer associated with the graph object type
				} else if (objectIDToActionInt[graphView.GraphObjects.last!.objectType] == GraphEnvironmentViewController.actionInt) {
					// The switch structure ensures that the function branches off to the correct code body to execute based on what the user is trying to do
					switch (GraphEnvironmentViewController.actionInt) {
						case (0):
							// When the user clicks down after initialising a previous pen draw object, this leads "shouldDraw" to be false, as the pen draw object is now complete
							// Another click after that means that another pen draw object should be added to the "GraphObjects" array and the process should start again
							if (!shouldDraw) {
								graphView.GraphObjects.append(PenDrawObject.init())
								graphView.currentGraphObject = graphView.GraphObjects.last!
							}
							// Calls a function to handle pen drawing
							penDrawMouseDown()
							graphView.selectedGraphObject = graphView.currentGraphObject
							break
						case (1):
							// When the user clicks down after initialising a previous straight line object, this leads "shouldDraw" to be false, as the straight line object is now complete
							// Another click after that means that another straight line object should be added to the "GraphObjects" array and the process should start again
							if (!shouldDraw) {
								graphView.GraphObjects.append(StraightLineObject.init())
								graphView.currentGraphObject = graphView.GraphObjects.last!
							}
							// Calls a function to handle the creation of a straight line object
							straightLineMouseDown()
							graphView.selectedGraphObject = graphView.currentGraphObject
							break
						case (2):
							// When the user finishes creating a curved line object, this leads "shouldDraw" to be false, as the curved line object is now complete
							// Another click after that means that curved line object object should be added to the "GraphObjects" array and the process should start again
							if (!shouldDraw) {
								graphView.GraphObjects.append(CurvedLineObject.init())
								graphView.currentGraphObject = graphView.GraphObjects.last!
							}
							// Calls a function to handle the creation of a curved line object
							curvedLineMouseDown()
							graphView.selectedGraphObject = graphView.currentGraphObject
							break
						case (3):
							// Calls the text object creation function
							textObjectMouseDown()
						default:
							break
					}
				}
			}
		} else {
			// Sets "selectedGraphObject" to an empty, generic graph object so that a new copy of the "graphView" rectangle is sent to the "GraphToolbar" object associated with the current view controller, so that the object is ready to create an image file when asked
			graphView.selectedGraphObject = GraphObject.init(typeInp: "")
		}
	}
	
	// Overrides the mouseMoved function that is called when the "trackingArea" variable that belongs to "GraphEnvironmentViewController" detects mouse movement within its tracking area
	override func mouseMoved(with event: NSEvent) {
		super.mouseMoved(with: event)
				
		// If the graph view is expecting drawing to occur, and the last graph objected appended to "GraphObjects" is a pen draw object, then the code block inside of the if statement below runs
		// A check to see if "GraphObjects" is empty occurs so that if the array is empty, short-circuit evaluation will stop the program from then checking if the last element added to an empty array contains a graph object that is a pen draw object, which is impossible as the array is empty
		if (self.shouldDraw && !graphView.GraphObjects.isEmpty && graphView.GraphObjects.last?.objectType == GraphObjectsClass.penDrawObjectID) {
			
			
			// A check to see if the mouse location variable has been initialised
			// "mouseLocationOutsideOfEventStream" is an inherited variable, that returns the mouse location with respect to the coordinate system of the window's primary view, which itself contains "graphView"
			if (graphView.window?.mouseLocationOutsideOfEventStream != nil) {
				// As graph objects are drawn within "graphView"'s rectangle, with respect to "graphView"'s coordinate system, the mouse location that is taken with respect to the coordinate system of the window's primary view, is converted to coordinates with respect to the coordinate system of the target view, which in this case is "grapView"'s rectangle
				// As "graphView.window?.mouseLocationOutsideOfEventStream" may be nil, the nil coalescing operator is used so that if there exits no mouse location recorded, despite a mouse click, then the literal "CGPoint(x: 0, y: 0)" is used so that the program doesn't crash when attempting to operate on a nil value
				let pointInTargetView = self.graphView.convert(graphView.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view)
				
				// Appends the current cursor location to the array of pen draw points, so that when the view redraws, the new point is included in the redraw
				(graphView.GraphObjects.last as! PenDrawObject).penDrawPoints.append(pointInTargetView)
			
			}
		}
		
		// If the action integer is equal to -1, this means that no drawing should be occuring, and if the action integer is equal to 3, this means that text box operations are occuring, which are asynchronous to the drawing of the "graphView" rectangle, and thus means that "graphView" does not need to redraw its rectangle
		// However if the action integer is equal to something else, then redrawing is required, and "graphView" should redraw its rectangle
		if (GraphView.actionInt != -1 || GraphView.actionInt != 3) {
			// As redrawing is still required, "needsDisplay" is set to true
			graphView.needsDisplay = true
		} else {
			// As redrawing is not needed, "needsDisplay" is set to false
			graphView.needsDisplay = false
		}
	}
}

//extension GraphEnvironmentViewController : NSTextViewDelegate {
//	func textDidChange() {
//		if (graphView.currentGraphObject.objectType == GraphObjectsClass.textObjectID) {
//			(
//		}
//	}
//}
