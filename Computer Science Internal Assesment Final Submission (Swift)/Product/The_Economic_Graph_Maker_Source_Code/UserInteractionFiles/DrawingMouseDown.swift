//
//  drawingMouseDown.swift
//  test3
//
//

import Foundation
import Cocoa

// The extension keyword implies that this code body extends the functionality of the GraphEnvironmentViewController class
// In this scenario, it is extending the amount of functions that the graph view has within a seperate file for organisation purposes
// This file only contains functions that pertain to how the program should react when the user does a primary click when having chosen their given action to do
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
	
	// A function that is called when the user does a primary click when it has selected to do delete a graph object
	func deleteMouseDown() {
		// As graph objects are drawn within "graphView"'s rectangle, with respect to "graphView"'s coordinate system, the mouse location that is taken with respect to the coordinate system of the window's primary view, is converted to coordinates with respect to the coordinate system of the target view, which in this case is "grapView"'s rectangle
		// As "graphView.window?.mouseLocationOutsideOfEventStream" may be nil, the nil coalescing operator is used so that if there exits no mouse location recorded, despite a mouse click, then the literal "CGPoint(x: 0, y: 0)" is used so that the program doesn't crash when attempting to operate on a nil value
		let pointInTargetView = self.graphView.convert(graphView.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view)
		
		// Iterates through the graph objects within the "GraphObjects" array in reverse, looking at the most recent objects first, so that if multiple objects are clicked, only the most recent object is deleted
		// A break label is created so that once the most recently placed object that intersects with the user click is is delted, the loop is exited
		objectDeleted: for (GraphObject) in (graphView.GraphObjects.reversed()) {
			// Determines the type of the object, in order to utilise the correct detection method
			switch (objectIDToActionInt[GraphObject.objectType]) {
				// Runs if the object is a pen draw object
				case (0):
					// Creates a mutable CGPath object that is effectively an array of points with specialised functions
					let tempVar : CGMutablePath = CGMutablePath.init()
					// Tells the path object to add lines between the points of the pen draw curve
					tempVar.addLines(between: (GraphObject as! PenDrawObject).penDrawPoints)
					// An if statement that checks to see if the point of the user click intersects with the pen draw curve
					if (tempVar.contains(pointInTargetView)) {
						// Filters out the graph object to be deleted, and then returns the rest of the graph objects in a new array that has been automatically resized with all elements shifted
						graphView.GraphObjects = graphView.GraphObjects.filter{ $0 != GraphObject }
						// A break statement that exists the loop so that only one object is deleted
						break objectDeleted
					}
					// A break statement that exists the case's code body
					break
				// Runs if the object is a straight line object
				case (1):
					// If the straight line object has not been given coordinates by the user, then the program does not attempt to detect if intersection has occured
					if ((GraphObject as! StraightLineObject).startCoord != CGPoint(x: -1, y: -1) && (GraphObject as! StraightLineObject).endCoord != CGPoint(x: -1, y: -1)) {
						
						// An array of points, which will then be checked against the point of where the user clicked to see if intersection has occured
						var pointsArray : [CGPoint] = [CGPoint]()
						
						// If the starting coordinate has an x-coordinate that is less than the ending coordinate, the loop will iterate from the starting coordinate to the ending coordinate, and if the starting coordinate has an x-coordinate that is greater than the ending coordinate, the loop will iterate from the ending coordinate to the starting coordinate
						if ((GraphObject as! StraightLineObject).startCoord.x < (GraphObject as! StraightLineObject).endCoord.x) {
							
							// stride() is a function that returns a sequence from the lower bound to the upper bound, with increments from the lower bound to the upper bound being based on the incremental value
							for xValue in stride(from: (GraphObject as! StraightLineObject).startCoord.x, to: (GraphObject as! StraightLineObject).endCoord.x, by: 0.1) {
								// As the graph object is a straight line, the y-coordinate can thus be calculated via the equation "y = mx + c", where m is the gradient, and c is the y-intercept
								// Thus, the points that will be utilised for detecting if the point of the user click intersects with the straight line object will be calculated based on the equation above
								pointsArray.append(CGPoint(x: xValue, y: ((GraphObject as! StraightLineObject).gradient * xValue) + (GraphObject as! StraightLineObject).yIntercept))
							}
						} else {
							// As the starting coordinate has an x-coordinate that is greater than the ending coordinate, the sequence created from the stride function will be created in reverse
							for xValue in stride(from: (GraphObject as! StraightLineObject).startCoord.x, to: (GraphObject as! StraightLineObject).endCoord.x, by: -0.1) {
								
								pointsArray.append(CGPoint(x: xValue, y: ((GraphObject as! StraightLineObject).gradient * xValue) + (GraphObject as! StraightLineObject).yIntercept))
							}
						}
						
						// Iterats through the points array to extract the individual points
						for point in pointsArray {
							// Creates a square at a given point
							let tempRect : CGRect = CGRect(origin: point, size: CGSize.init(width: 4, height: 4))
							
							// Translates the square to the centre of the point of the line
							// This works as a square has the same height and width, thus the middle coordinate of the square is half the height and width of the square, which then can be subtracted or added from the point of origin created, to then translate the square to the centre of the point on the line
							let intersectionRect : CGRect = tempRect.offsetBy(dx: -(tempRect.midX - point.x), dy: (point.y - tempRect.midY))
							
							// If the intersection rectangle intersects with the point of the cursor click, then the user has chosen to delete the most recently created object that intersects with the point of the user's cursor click
							if (intersectionRect.contains(pointInTargetView)) {
								// Filters out the graph object to be deleted, and then returns the rest of the graph objects in a new array that has been automatically resized with all elements shifted
								graphView.GraphObjects = graphView.GraphObjects.filter{ $0 != GraphObject }
								// A break statement that exists the loop so that only one object is deleted
								break objectDeleted
							}
						}
					}
					// A break statement that exists the case's code body
					break
				// Runs if the object is a curved line object
				case (2):
					// This code operates on similar logic to the pen draw objects, through creating a path objects and then utilising predefined functions for intersection detection
					let tempVar : CGMutablePath = CGMutablePath.init()
					// If "bezierControlPoints.count == 3", this means that the curve is a quadratic bezier curve
					if ((GraphObject as! CurvedLineObject).bezierControlPoints.count == 3) {
						tempVar.move(to: (GraphObject as! CurvedLineObject).bezierControlPoints[0])
						tempVar.addQuadCurve(to: (GraphObject as! CurvedLineObject).bezierControlPoints[2], control: (GraphObject as! CurvedLineObject).bezierControlPoints[1])
					// If "bezierControlPoints.count == 4", this means that the curve is a cubic bezier curve
					} else if ((GraphObject as! CurvedLineObject).bezierControlPoints.count == 4) {
						tempVar.move(to: (GraphObject as! CurvedLineObject).bezierControlPoints[0])
						tempVar.addCurve(to: (GraphObject as! CurvedLineObject).bezierControlPoints[3], control1: (GraphObject as! CurvedLineObject).bezierControlPoints[1], control2: (GraphObject as! CurvedLineObject).bezierControlPoints[2])
					}
					// If "bezierControlPoints.count" does not equal 3 or 4, this means that the curve has not been properly created, and is thus ignored
					if (tempVar.contains(pointInTargetView)) {
						// Filters out the graph object to be deleted, and then returns the rest of the graph objects in a new array that has been automatically resized with all
						graphView.GraphObjects = graphView.GraphObjects.filter{ $0 != GraphObject }
						// A break statement that exists the loop so that only one object is deleted
						break objectDeleted
					}
					// A break statement that exists the case's code body
					break
				// Runs if the object is a text object
				case (3):
					// As the text object exists within the rectange of "graphView", frame is used so that the text box's area and location is taken with respect to the coordinate system of "graphView"'s rectangle
					if ((GraphObject as! TextObject).textView.frame.contains(pointInTargetView)) {
						// Filters out the graph object to be deleted, and then returns the rest of the graph objects in a new array that has been automatically resized with all
						graphView.GraphObjects = graphView.GraphObjects.filter{ $0 != GraphObject }
						// A break statement that exists the loop so that only one object is deleted
						break objectDeleted
					}
					// Runs if the object is a text object
					break
				default:
					// This should never be reached, as only four types of graph objects with four different IDs should be populated within the array
					break
			}
		}
		
		// Checks to see if the view is currently expecting to draw, and if it is not, the if body is executed to tell the view to expect to draw and to refresh the view
		if (self.shouldDraw == false) {
			self.shouldDraw = true
			graphView.needsDisplay = true
		}
		// Forces "graphView" to redraw its view
		graphView.viewWillDraw()
		// Tells the program to stop expecting to draw, and "graphView" to stop refreshing its view
		self.shouldDraw = false
		graphView.needsDisplay = false
		
		// Sets "selectedGraphObject" to an empty, generic graph object so that a new copy of the "graphView" rectangle is sent to the "GraphToolbar" object associated with the current view controller, so that the object is ready to create an image file when asked
		graphView.selectedGraphObject = GraphObject.init(typeInp: "")
	}
}
