//
//  GraphViewObjectDrawing.swift
//  Economic Graph Maker Version 2
//
//

import Foundation
import Cocoa

// The extension keyword implies that this code body extends the functionality of the GraphEnvironmentViewController class
// In this scenario, it is extending the amount of functions that the graph view has within a seperate file for organisation purposes
// This file only contains functions that pertain to object drawing
extension GraphView {
	
	// A function that initialises the closures for usage
	func varInit() {
		// The closure that when called does pen drawing
		// "[self] in" means that the closure is using variables that are from the GraphView object
		// Without it, all variables encapsulated within the GraphView object would need to have "self."
		// Attached to the start to signify that the variable is from the GraphView object
		penDraw = { [self] in
			// Adds all the pen draw points to the CGContext
			// A forced downcast (as seen through "as!") forces the program to attempt to use "currentGraphObject" as a "PenDrawObject", in order to access the "penDrawPoints" array, and if it cannot be downcasted, then the program invokes a runtime error, and the program stops
			cgContext?.addLines(between: (currentGraphObject as! PenDrawObject).penDrawPoints)
			// Tells the CGContext to draw a path through all of the pen draw points
			cgContext?.strokePath()
		}
		
		// The closure that when called does straight line drawing
		straightLineDraw = { [self] in
			// A check to see if the end coordinate has been written by the user, as the point (-1, -1) cannot be written to the variable by the user
			// A forced downcast (as seen through "as!") forces the program to attempt to use "currentGraphObject" as a "StraightLineObject", in order to access the specific variables that a "StraightLineObject" would have, and if it cannot be downcasted, then the program invokes a runtime error, and the program stops
			if ((currentGraphObject as! StraightLineObject).endCoord != CGPoint(x: -1, y: -1)) {
				// Moves the start of the drawing to the starting coordinate
				cgContext?.move(to: (currentGraphObject as! StraightLineObject).startCoord)
				// Adds a line from the starting coordinate, to the end coordinate
				cgContext?.addLine(to: (currentGraphObject as! StraightLineObject).endCoord)
				cgContext?.strokePath()
			} else {
				cgContext?.move(to: (currentGraphObject as! StraightLineObject).startCoord)
				// Draws a circle to assist users in understanding where the start of their line is
				cgContext?.addEllipse(in: CGRect(x: (currentGraphObject as! StraightLineObject).startCoord.x, y: (currentGraphObject as! StraightLineObject).startCoord.y, width: 5, height: 5))
				// In this scenario, the circle is drawn
				cgContext?.strokePath()
			}
		}
		
		// The closure that when called does curved line drawing
		curvedLineDraw = { [self] in
			// Determines if the curved line is a quadratic bezier curve
			// A forced downcast (as seen through "as!") forces the program to attempt to use "currentGraphObject" as a "CurvedLineObject", in order to access the specific variables that a "CurvedLineObject" would have, and if it cannot be downcasted, then the program invokes a runtime error, and the program stops
			if ((currentGraphObject as! CurvedLineObject).bezierControlPoints.count == 3) {
				cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0])
				// Creates a quadratic bezier curve
				cgContext?.addQuadCurve(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2], control: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1] )
				cgContext?.strokePath()
				
			// Determines if the curved line is a cubic bezier curve
			} else if ((currentGraphObject as! CurvedLineObject).bezierControlPoints.count == 4) {
				cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0])
				// Creates a cubic bezier curve
				cgContext?.addCurve(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[3], control1: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1], control2: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2])
				cgContext?.strokePath()
			}
		}
		
		// A group of declarations that associate an object ID to its respective drawing closure, allowing for the closures to be called based on the object type alone
		funcDict[GraphObjectsClass.penDrawObjectID] = penDraw
		funcDict[GraphObjectsClass.straightLineObjectID] = straightLineDraw
		funcDict[GraphObjectsClass.curvedLineObjectID] = curvedLineDraw
		funcDict[GraphObjectsClass.textObjectID] = textDraw
	}
	
	// A function that redraws every graph object after it is added or removed
	func redrawView() {
		// Iterates through all of the objects within a closure, with the variable "object" as the variable that changes after each loop iteration
		GraphObjects.forEach { (object) in
			// Sets the current graph object to draw as the object that is currently
			currentGraphObject = object
			// Ensures that the lines are draw as solid lines
			cgContext?.setLineDash(phase: 0, lengths: [])
			cgContext?.setLineWidth(5)
			// A switch-case statement that determines the current graph object type, and invokes the drawing closure for that specific graph object type
			switch (object.objectType) {
				case GraphObjectsClass.penDrawObjectID:
					penDraw()
				case GraphObjectsClass.straightLineObjectID:
					straightLineDraw()
				case GraphObjectsClass.curvedLineObjectID:
					curvedLineDraw()
				case GraphObjectsClass.textObjectID:
					// As the text objects have their own drawing logic, this code exists primarily to show the user where the text box is being drawn as a square. It will disappear after the user starts typing
					// A forced downcast (as seen through "as!") forces the program to attempt to use "object" as a "TextObject", in order to access the specific variables that a "TextObject" would have, and if it cannot be downcasted, then the program invokes a runtime error, and the program stops
					if ((object as! TextObject).textView.string.isEmpty) {
						cgContext?.move(to: (object as! TextObject).drawLocation)
						cgContext?.setLineWidth(5)
						cgContext?.addRect(CGRect.init(origin: (object as! TextObject).drawLocation, size: CGSize(width: 5, height: 5)))
						cgContext?.strokePath()
						cgContext?.setFillColor(CGColor.black)
						cgContext?.fill(CGRect.init(origin: (object as! TextObject).drawLocation, size: CGSize(width: 5, height: 5)))
						cgContext?.strokePath()
					}
				default: break
			}
		}
	}
}
