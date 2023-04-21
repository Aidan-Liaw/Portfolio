//
//  graphView.swift
//  test3
//
//

import Cocoa

// A class that describes how the graph view should behave
// It is subclassed from NSView so that it gains the properties of a view, thus allowing focus to be placed on drawing logic
// It is important to recognise the difference between bounds and frame
// Bounds is a rectangle of a view, with the origin of the rectangle set with respect to the coordinate system of the rectangle itself
// Frame however is also a rectangle of a view, but the origin is set with respect to the view's origin within the coordinate system of the superview that it resides in as a subview
class GraphView : NSView {
	
	// A copy of the action integer
	static var actionInt : Int8 = -1
	
	// A computed variable that returns a rectangle object of the border to draw
	var borderRect : CGRect {
		// insertBy is a function that inserts a rectangle that is based off the rectangle that is calling it
		return bounds.insetBy(
			dx: borderLineWidth * 0.5,
			dy: borderLineWidth * 0.5
		)
	}
	
	// A computed variable that returns a rectangle object of the thickness of the border to draw
	var borderLineWidth : CGFloat {
		return min(bounds.width, bounds.height) * 0.005
	}
	
	// A function that draws the view
	func drawBoarder() {
		// Tells the CGContext to begin drawing
		cgContext?.beginPath()
		cgContext?.addRect(borderRect)
		cgContext?.setStrokeColor(NSColor.black.cgColor)
		cgContext?.setLineWidth(CGFloat(5))
		// Tells the CGContext to draw the border of the rectangle added
		cgContext?.strokePath()
		// Tells the CGContext to stop drawing
		cgContext?.closePath()
	}
	
	// An array of graph objects for storage
	var GraphObjects = [GraphObject]()
	
	// The current graph object that is being drawn, edited, or manipulated
	var currentGraphObject : GraphObject = GraphObject.init(typeInp: "")
	
	// The current graph object that has been clicked on. It is used mainly to tell the program when to send a new copy of the current graph view
	var selectedGraphObject : GraphObject = GraphObject.init(typeInp: "") {
		// A structure that holds code to run when the variable has been written to
		didSet {
			// Ensures that an empty graph view does not even make it to sending
			if (!self.GraphObjects.isEmpty) {
				// Sends the graph view to the toolbar class, where the saving logic is stored
				// It is sent as btyes of PDF data for later conversion to an image file
				// Bounds returns the rectangle of the graph view, with the origin set with respect to the view's own coordinate system
				GraphToolbar.graphViewToSave = self.dataWithPDF(inside: self.bounds)
			}
			
		}
	}
	
	// The Core Graphics context of the view, where low-level drawing occurs
	var cgContext = NSGraphicsContext.current?.cgContext
	
	// Runs when the view is required to redraw
	// dirtyRect is the graph view represented as a rectange object
	override func draw(_ dirtyRect: NSRect) {
		// Initalises the view to draw
		super.draw(dirtyRect)
		// Sets the fill of the view to white
		NSColor(red: 1, green: 1, blue: 1, alpha: 1).setFill()
		// Fills the view with white
		self.bounds.fill()

		// Calls the most recent CGContext
		cgContext = NSGraphicsContext.current?.cgContext
		
		// Invokes the function to draw the border
		drawBoarder()
		cgContext?.beginPath()
		// Invokes the function to draw all graph objects
		redrawView()
		// Ensures that the border is always on top of the graph objects
		drawBoarder()
		cgContext?.closePath()
	}
	
	// An identifier that represents a type, which will be used to create a dictionary of functions to draw the graph objects
	typealias VoidFunction = () -> Void
	
	// A dictionary of functions to draw the graph objects
	var funcDict = [String : VoidFunction]()
	
	// A closure that returns nothing. The use of the exclamation mark means that if the closure is nil, or in other words not initialised, it will invoke a runtime error
	var penDraw : VoidFunction!
	
	var straightLineDraw : VoidFunction!
	
	var curvedLineDraw : VoidFunction!
	
	var textDraw : VoidFunction!
	
}
