//
//  drawingMouseDown.swift
//  test3
//
//  Created by Aidan Liaw on 30/4/2022.
//

import Foundation
import Cocoa

extension GraphEnvironmentViewController {
	// A function that is called when the user does a primary click when it has selected to do pen drawing
	func penDrawMouseDown() {
		// Ensures that the current graph object that is being operated on is a pen draw object, and that the program is currently not expecting to draw anything
		// If this is true, then "shouldDraw "is set to true to imply that the view should expect to draw, and "needsDisplay" is set to true to tell the graph view to call its draw function, thus refreshing the view as often as possible, in order to create the illusion of simultaneous drawing
		if (graphView.currentGraphObject.objectType == GraphObjectsClass.penDrawObjectID && self.shouldDraw == false) {
			self.shouldDraw = true
			graphView.needsDisplay = true
		// This else body exists so that when the user clicks whilst the program is expect to draw, it will stop drawing functionality
		} else {
			self.shouldDraw = false
			graphView.needsDisplay = false
		}
	}
	
	// A function that is called when the user does a primary click when it has selected to do create a straight line
	func straightLineMouseDown() {
		// Checks to see if the view is currently expecting to draw, and if it is not, the if body is executed to tell the view to expect to draw and to refresh the view
		if (self.shouldDraw == false) {
			self.shouldDraw = true
			graphView.needsDisplay = true
		}
		
		// Ensures that the current graph object that is being operated on is a straight line object
		if (graphView.currentGraphObject.objectType == GraphObjectsClass.straightLineObjectID) {
			
			// CGPoint(x: -1, y: -1) is a point that users cannot select. This variable exists to check whether the variable has just been initialised
			if ((graphView.currentGraphObject as! StraightLineObject).startCoord.equalTo(CGPoint(x: -1, y: -1)) && (graphView.currentGraphObject as! StraightLineObject).endCoord.equalTo(CGPoint(x: -1, y: -1))) {
				
				// A check to see if the mouse location variable has been initialised
				// "mouseLocationOutsideOfEventStream" is an inherited variable, that returns the mouse location with respect to the coordinate system of the window's primary view, which itself contains "graphView"
				if (graphView.window?.mouseLocationOutsideOfEventStream != nil) {
					// As graph objects are drawn within "graphView"'s rectangle, with respect to "graphView"'s coordinate system, the mouse location that is taken with respect to the coordinate system of the window's primary view, is converted to coordinates with respect to the coordinate system of the target view, which in this case is "grapView"'s rectangle
					// As "graphView.window?.mouseLocationOutsideOfEventStream" may be nil, the nil coalescing operator is used so that if there exits no mouse location recorded, despite a mouse click, then the literal "CGPoint(x: 0, y: 0)" is used so that the program doesn't crash when attempting to operate on a nil value
					let pointInTargetView = self.graphView.convert(graphView.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view)
						
					// If the variable has just been initalised, as both the starting coordinate and the ending coordinate are equal to CGPoint(x: -1, y: -1), and has thus enteredd the the current code body, then the start coordinate is now assigned to be the value of the current cursor location that was click on with respect to the coordinate system of "graphView"'s rectangle
					(graphView.GraphObjects.last as! StraightLineObject).startCoord = pointInTargetView
				}
				
			// If one of the coordinates has been assigned to a coordinate that can be selected by the user, this means that the next click will determine the position of the next coordinate, meaning that all the coordinate data will have been provided to draw
			} else if (!(graphView.currentGraphObject as! StraightLineObject).startCoord.equalTo(CGPoint(x: -1, y: -1)) && (graphView.currentGraphObject as! StraightLineObject).endCoord.equalTo(CGPoint(x: -1, y: -1))) {
				
				if (graphView.window?.mouseLocationOutsideOfEventStream != nil) {
					let pointInTargetView = self.graphView.convert(graphView.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view)
					
					// As this code body is entered if the starting coordinate is initialised, but the ending coordinate is not, the ending coordinate is now assigned a coordinate that exists within the bounds of "graphView"
					(graphView.GraphObjects.last as! StraightLineObject).endCoord = pointInTargetView
					// This function tells "graphView" that it must now redraw its view, ensuring that the line will be drawn and seen by the user
					graphView.viewWillDraw()
					
					
				}
				
				// Tells the program to stop expecting to draw, and "graphView" to stop refreshing its view
				self.shouldDraw = false
				graphView.needsDisplay = false
				
			// If one of the coordinates has been assigned to a coordinate that can be selected by the user, this means that the next click will determine the position of the next coordinate, meaning that all the coordinate data will have been provided to draw
			} else if ((graphView.currentGraphObject as! StraightLineObject).startCoord.equalTo(CGPoint(x: -1, y: -1)) && !(graphView.currentGraphObject as! StraightLineObject).endCoord.equalTo(CGPoint(x: -1, y: -1))) {
				
				if (graphView.window?.mouseLocationOutsideOfEventStream != nil) {
					let pointInTargetView = self.graphView.convert(graphView.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view)
						
					(graphView.GraphObjects.last as! StraightLineObject).startCoord = pointInTargetView
					graphView.viewWillDraw()
				}
				
				// Tells the program to stop expecting to draw, and "graphView" to stop refreshing its view
				self.shouldDraw = false
				graphView.needsDisplay = false
				
			} else {
				// Tells the program to stop expecting to draw, and "graphView" to stop refreshing its view
				self.shouldDraw = false
				graphView.needsDisplay = false
			}
		}
	}
	
	// A function that is called when the user does a primary click when it has selected to create a curved line
	func curvedLineMouseDown() {
		if (self.shouldDraw == false) {
			self.shouldDraw = true
			graphView.needsDisplay = true
		}
		
		if (graphView.currentGraphObject.objectType == GraphObjectsClass.curvedLineObjectID) {
			if ((graphView.currentGraphObject as! CurvedLineObject).isCubic) {
				if ((graphView.currentGraphObject as! CurvedLineObject).bezierControlPoints.count < 4) {
					
					if (graphView.window?.mouseLocationOutsideOfEventStream != nil) {
						let pointInTargetView = self.graphView.convert(graphView.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view)
							
						(graphView.currentGraphObject as! CurvedLineObject).bezierControlPoints.append(pointInTargetView)
						graphView.viewWillDraw()
					}
				}
				
				if ((graphView.currentGraphObject as! CurvedLineObject).bezierControlPoints.count == 4) {
					graphView.viewWillDraw()
					// Tells the program to stop expecting to draw, and "graphView" to stop refreshing its view
					self.shouldDraw = false
					graphView.needsDisplay = false
				}
				
			} else {
				if ((graphView.currentGraphObject as! CurvedLineObject).bezierControlPoints.count < 3) {
					
					if (graphView.window?.mouseLocationOutsideOfEventStream != nil) {
						let pointInTargetView = self.graphView.convert(graphView.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view)
							
						(graphView.currentGraphObject as! CurvedLineObject).bezierControlPoints.append(pointInTargetView)
						
						graphView.viewWillDraw()
					}
				}
				
				if ((graphView.currentGraphObject as! CurvedLineObject).bezierControlPoints.count == 3) {
					graphView.viewWillDraw()
					// Tells the program to stop expecting to draw, and "graphView" to stop refreshing its view
					self.shouldDraw = false
					graphView.needsDisplay = false
				}
			}
		}
	}
	
	// A function that is called when the user does a primary click when it has selected to create a text box
	func textObjectMouseDown() {
		// As graph objects are drawn within "graphView"'s rectangle, with respect to "graphView"'s coordinate system, the mouse location that is taken with respect to the coordinate system of the window's primary view, is converted to coordinates with respect to the coordinate system of the target view, which in this case is "grapView"'s rectangle
		// As "graphView.window?.mouseLocationOutsideOfEventStream" may be nil, the nil coalescing operator is used so that if there exits no mouse location recorded, despite a mouse click, then the literal "CGPoint(x: 0, y: 0)" is used so that the program doesn't crash when attempting to operate on a nil value
		let pointInTargetView = self.graphView.convert(self.view.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view)
		
		// Creates a empty text object
		let textObject : TextObject = TextObject.init()
		
		// Assigns the text object with a text box, with a height that acts as a rectangle to click to start editing
		textObject.textView = NSTextView.init(frame: NSRect.init(origin: pointInTargetView, size: CGSize.init(width: 10, height: 20)))
		
		textObject.drawLocation = pointInTargetView
		
		// Tells the text box that it can draw its rectange asynchronously to its superview via a thread that handles drawing
		textObject.textView.canDrawConcurrently = true
		
		
		// Sets the background colour to clear
		textObject.textView.backgroundColor = .clear
		textObject.textView.textColor = .black
		// Assigns the delgate of this text box to be "GraphEnvironmentViewController", which will now handle changes and the user interactions that occur on the text box
		textObject.textView.delegate = self
		// As the text box will be resized manually, the text box is told that it will not automatically resize itself horizontally or vertically
		textObject.textView.isHorizontallyResizable = false
		textObject.textView.isVerticallyResizable = false
		
		// The container size is the maximum size that the text view can grow to, which in this case is this case is the size of the graph view
		textObject.textView.textContainer!.containerSize = CGSize(width: self.graphView.bounds.width, height: self.graphView.bounds.height)
		// As the text box will be resized manually, the text box is told to not track for width changes and change accordingly
		textObject.textView.textContainer!.widthTracksTextView = false

		// The text object is now added to the array of graph objects
		graphView.GraphObjects.append(textObject as GraphObject)
		// The text box is now added to the graph view as a subview, meaning that the graph view will now be displayed on the graph view
		self.graphView.addSubview(textObject.textView)
		
	}
}
