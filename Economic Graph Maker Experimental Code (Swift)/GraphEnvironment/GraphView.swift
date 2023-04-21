//
//  graphView.swift
//  test3
//
//  Created by Aidan Liaw on 30/1/2022.
//

import Cocoa

// Don't use HashMaps in general
@IBDesignable
class GraphView : NSView {
	
	static var actionInt : Int8 = -1
	
	var borderRect : CGRect {
		return bounds.insetBy(
			dx: borderLineWidth * 0.5,
			dy: borderLineWidth * 0.5)
	}
	
	var borderLineWidth : CGFloat {
		return min(bounds.width, bounds.height) * 0.005
	}
	
	func drawBoarder() {
		cgContext?.beginPath()
		cgContext?.addRect(borderRect)
		cgContext?.setStrokeColor(NSColor.black.cgColor)
		cgContext?.setLineWidth(CGFloat(5))
		cgContext?.strokePath()
		cgContext?.closePath()
	}
	
//	var GraphObjects = GraphObjectsClass.init()
	
	var GraphObjects = [GraphObject]()
	
	var currentGraphObject : GraphObject = GraphObject.init(typeInp: "")
	
	var selectedGraphObject : GraphObject = GraphObject.init(typeInp: "") {
		didSet {
			if (!self.GraphObjects.isEmpty) { GraphToolbar.CGContextToSave = self.dataWithPDF(inside: self.bounds) }
		}
	}
	
	var undoneObjects = [GraphObject]() {
		didSet {
			undoneObjects.removeAll()
		}
	}
	var undonePenDrawPoints = [CGPoint]()

	var cgContext = NSGraphicsContext.current?.cgContext
	
	@objc public func undoGraphObjectFunc() {
		if (!self.GraphObjects.isEmpty) {
			
			if (self.GraphObjects.last?.objectType == GraphObjectsClass.penDrawObjectID) {
				undonePenDrawPoints.append((self.GraphObjects.last as! PenDrawObject).penDrawPoints.popLast() ?? CGPoint())
			} else {
				undoneObjects.append(self.GraphObjects.popLast()!)
			}
			
			self.needsDisplay = true
			self.viewWillDraw()
			self.needsDisplay = false
		}
	}

	@objc public func redoGraphObjectFunc() {
		if (!self.undoneObjects.isEmpty) {
			if (self.undoneObjects.last?.objectType == GraphObjectsClass.penDrawObjectID
				&& !undonePenDrawPoints.isEmpty) {
				(self.GraphObjects.last as! PenDrawObject).penDrawPoints.append(undonePenDrawPoints.popLast()!)
			} else {
				self.GraphObjects.append(self.undoneObjects.popLast()!)
			}
			
			self.needsDisplay = true
			self.viewWillDraw()
			self.needsDisplay = false
		}
	}
	
	var textViews : [NSTextView] = [NSTextView]()
	var textViewsPosition : [NSUserInterfaceItemIdentifier : CGPoint] = [NSUserInterfaceItemIdentifier : CGPoint]()
	var textViewCreationsCounter : Int = 0
	static var changeGraphObjectsArray : Bool = false
	
	override func draw(_ dirtyRect: NSRect) {
//		NSGraphicsContext.restoreGraphicsState()
//		NSGraphicsContext.current?.restoreGraphicsState()
//		cgContext?.restoreGState()
		if (GraphView.changeGraphObjectsArray) {
			GraphView.changeGraphObjectsArray = !GraphView.changeGraphObjectsArray
			if (GraphView.actionInt == 5) {
				undoGraphObject()
			} else {
				redoGraphObject()
			}
		}
		
		if (GraphView.actionInt >= 0 && GraphView.actionInt <= 3 && !undoneObjects.isEmpty) {
			undoneObjects.removeAll()
		}
		
		super.draw(dirtyRect)
		cgContext = NSGraphicsContext.current?.cgContext
		
		drawBoarder()
		cgContext?.beginPath()
		redrawView()
//		if (GraphObjects.last != nil){
//			self.currentGraphObject = GraphObjects.last!
//			funcDict[currentGraphObject.objectType]?()
//		}
		drawBoarder()
		cgContext?.closePath()
		
//		NSGraphicsContext.saveGraphicsState()
//		NSGraphicsContext.current?.saveGraphicsState()
//		cgContext?.saveGState()
	}
	
	typealias AnyFunction = (Any...) -> [Any]
	typealias VoidFunction = () -> Void
	
	var funcDict = [String : VoidFunction]()
	
	var penDraw : VoidFunction!
	
	var straightLineDraw : VoidFunction!
	
	var curvedLineDraw : VoidFunction!
	
	var selectAction : VoidFunction!
	
	var undoGraphObject : VoidFunction!
	
	var redoGraphObject : VoidFunction!
	
}
