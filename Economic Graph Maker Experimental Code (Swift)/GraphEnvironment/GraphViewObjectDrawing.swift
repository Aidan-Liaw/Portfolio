//
//  GraphViewObjectDrawing.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 28/5/2022.
//

import Foundation
import Cocoa


extension GraphView {
	
	func varInit() {
		penDraw = { [self] in
//			var path : CGMutablePath = CGMutablePath.init()
//			path.addLines(between: (currentGraphObject as! penDrawObject).penDrawPoints)
//			for (index, point) in ((currentGraphObject as! penDrawObject).penDrawPoints).enumerated() {
//				if (index == 0) {
//					cgContext?.move(to: point)
//				} else {
//					cgContext?.addLine(to: point)
//				}
//			}
//			cgContext?.addPath(path)
			cgContext?.addLines(between: (currentGraphObject as! PenDrawObject).penDrawPoints)
			cgContext?.strokePath()
		}
		
		straightLineDraw = { [self] in
			if ((currentGraphObject as! StraightLineObject).endCoord != CGPoint(x: -1, y: -1)) {
				cgContext?.move(to: (currentGraphObject as! StraightLineObject).startCoord)
				cgContext?.addLine(to: (currentGraphObject as! StraightLineObject).endCoord)
				
//				var pointsArray : [CGPoint] = [CGPoint]()
//				let gradient : Double = ((currentGraphObject as! StraightLineObject).startCoord.y - (currentGraphObject as! StraightLineObject).endCoord.y) / ((currentGraphObject as! StraightLineObject).startCoord.x - (currentGraphObject as! StraightLineObject).endCoord.x)
//				let yIntercept : Double = (currentGraphObject as! StraightLineObject).startCoord.y - (gradient * (currentGraphObject as! StraightLineObject).startCoord.x)
//
//				if ((currentGraphObject as! StraightLineObject).startCoord.x < (currentGraphObject as! StraightLineObject).endCoord.x) {
//					for xValue in stride(from: (currentGraphObject as! StraightLineObject).startCoord.x, to: (currentGraphObject as! StraightLineObject).endCoord.x, by: 1) {
//						pointsArray.append(CGPoint(x: xValue, y: (gradient * xValue) + yIntercept))
//					}
//				} else {
//					for xValue in stride(from: (currentGraphObject as! StraightLineObject).startCoord.x, to: (currentGraphObject as! StraightLineObject).endCoord.x, by: -1) {
//
//						pointsArray.append(CGPoint(x: xValue, y: (gradient * xValue) + yIntercept))
//					}
//				}
//
//				for point in pointsArray {
//					let tempRect : CGRect = CGRect(origin: point, size: CGSize.init(width: 1, height: 1))
//
//					let intersectionRect : CGRect = tempRect.offsetBy(dx: -(tempRect.midX - point.x), dy: (point.y - tempRect.midY))
//
//					cgContext?.addRect(intersectionRect)
//				}
			
				cgContext?.strokePath()
			} else {
				cgContext?.move(to: (currentGraphObject as! StraightLineObject).startCoord)
				cgContext?.addEllipse(in: CGRect(x: (currentGraphObject as! StraightLineObject).startCoord.x, y: (currentGraphObject as! StraightLineObject).startCoord.y, width: 5, height: 5))
				cgContext?.strokePath()
			}
		}
		
		curvedLineDraw = { [self] in
			if ((currentGraphObject as! CurvedLineObject).bezierControlPoints.count == 3) {
				cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0])
				cgContext?.addQuadCurve(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2], control: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1] )
				cgContext?.strokePath()
				
			} else if ((currentGraphObject as! CurvedLineObject).bezierControlPoints.count == 4) {
				cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0])
				cgContext?.addCurve(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[3], control1: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1], control2: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2])
				cgContext?.strokePath()
			}
		}
		
//		var X = -1
		
//		textDraw = { [self] in
//
//			X = X + 1
//			NSLog((X as NSNumber).stringValue)
//
//			let textStorage : NSTextStorage = NSTextStorage.init(string: (currentGraphObject as! TextObject).text.string)
//
//
////			let textBox : CGRect = CGRect.init(x: (currentGraphObject as! textObject).drawLocation.x, y: (currentGraphObject as! textObject).drawLocation.y, width: CGFloat((currentGraphObject.width)), height: CGFloat((currentGraphObject.height)))
//
////			let textContainer : NSTextContainer = NSTextContainer.init(containerSize: NSSize.init(width: CGFloat((currentGraphObject.width)), height: CGFloat((currentGraphObject.height))))
//
//			let attributes : [NSAttributedString.Key : Any] = [
//				.font : NSFont.systemFont(ofSize: 12),
//				.paragraphStyle : NSTextAlignment.center
//			]
//
//			let textBox : CGRect = CGRect.init(x: (currentGraphObject as! TextObject).drawLocation.x, y: (currentGraphObject as! TextObject).drawLocation.y, width: ceil(textStorage.boundingRect(with: textStorage.size() , options: []).width), height: ceil(textStorage.boundingRect(with: textStorage.size(), options: []).height))
//
//			let textContainer : NSTextContainer = NSTextContainer.init(containerSize: textStorage.size())
//
//			let textView : NSTextView = NSTextView.init(frame: textBox, textContainer: textContainer)
//
//
//			textView.allowsUndo = true
//			textView.drawsBackground = true
//			textView.backgroundColor = .clear
//			textView.drawsBackground = false
//			textView.setSelectedRange(NSRange.init(location: 0, length: (currentGraphObject as! TextObject).text.length))
//
//			textView.minSize = NSSize.init(width: 0, height: 0)
//			textView.maxSize = CGSize.init(width: ceil(textStorage.size().width), height: ceil(textStorage.size().height))
//
//			textView.isVerticallyResizable = true
//
//			let layoutManager : NSLayoutManager = NSLayoutManager.init()
//			layoutManager.addTextContainer(textContainer)
//
//			textStorage.addLayoutManager(layoutManager)
//
//
//			if (cgContext != nil) {
//////				CTFrameDraw(
//////
//////					CTFramesetterCreateFrame(
//////
//////						CTFramesetterCreateWithAttributedString(
//////							NSAttributedString.init(
//////								string: (currentGraphObject as! TextObject).text.string,
//////								attributes: attributes)),
//////
//////						CFRange.init(
//////							location: 0,
//////							length: (currentGraphObject as! TextObject).text.length),
//////
//////						CGPath.init(rect: textBox, transform: nil),
//////						attributes as CFDictionary),
//////
//////					cgContext!)
////
////				self.addSubview(textView)
////
////				self.viewWillDraw()
//
////				CTLineDraw(CTLineCreateWithAttributedString(NSAttributedString(string: (currentGraphObject as! textObject).text as String, attributes: attributes)), cgContext!)
//			}
//
//		}
		
		selectAction = { [self] in }
		
		undoGraphObject = { [self] in
			if (!GraphObjects.isEmpty) {
				undoneObjects.append(GraphObjects.popLast()!)
				currentGraphObject = GraphObjects.last ?? GraphObject.init(typeInp: "")
			}
		}
		
		redoGraphObject = { [self] in
			if (!undoneObjects.isEmpty) {
				GraphObjects.append(undoneObjects.popLast()!)
				currentGraphObject = GraphObjects.last ?? GraphObject.init(typeInp: "")
			}
		}
		
		funcDict[GraphObjectsClass.penDrawObjectID] = penDraw
		funcDict[GraphObjectsClass.straightLineObjectID] = straightLineDraw
		funcDict[GraphObjectsClass.curvedLineObjectID] = curvedLineDraw
		funcDict[GraphObjectsClass.textObjectID] = { [self] in
			if ((currentGraphObject as! TextObject).textView.string.isEmpty) {
				cgContext?.move(to: (currentGraphObject as! TextObject).drawLocation)
					 cgContext?.setLineWidth(5)
					 cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! TextObject).drawLocation, size: CGSize(width: 5, height: 5)))
					 cgContext?.strokePath()
					 cgContext?.setFillColor(CGColor.black)
					 cgContext?.fill(CGRect.init(origin: (currentGraphObject as! TextObject).drawLocation, size: CGSize(width: 5, height: 5)))
					 cgContext?.strokePath()
				 }
		}
		funcDict["selectActionID"] = selectAction
		funcDict["undoGraphObjectID"] = undoGraphObject
		funcDict["redoGraphObjectID"] = redoGraphObject
	}
	
	func redrawView() {
		GraphObjects.forEach { (object) in
			currentGraphObject = object
			cgContext?.setLineDash(phase: 0, lengths: [])
			cgContext?.setLineWidth(5)
			funcDict[object.objectType]!()
//			switch (object.objectType) {
//				case GraphObjectsClass.penDrawObjectID:
//					penDraw()
//				case GraphObjectsClass.straightLineObjectID:
//					straightLineDraw()
//				case GraphObjectsClass.curvedLineObjectID:
//					curvedLineDraw()
//				case GraphObjectsClass.textObjectID:
//
//				default: break
//			}
			
			if (currentGraphObject == selectedGraphObject) {
				switch (object.objectType) {
					case GraphObjectsClass.penDrawObjectID:
						if ((currentGraphObject as! PenDrawObject).penDrawPoints.count > 1) {
							cgContext?.move(to: (currentGraphObject as! PenDrawObject).penDrawPoints.first!)
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! PenDrawObject).penDrawPoints.first!, size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! PenDrawObject).penDrawPoints.first!, size: CGSize(width: 5, height: 5)))
							
							cgContext?.move(to: (currentGraphObject as! PenDrawObject).penDrawPoints.last!)
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! PenDrawObject).penDrawPoints.last!, size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! PenDrawObject).penDrawPoints.last!, size: CGSize(width: 5, height: 5)))
							
							let tempVar : CGMutablePath = CGMutablePath.init()
							tempVar.addLines(between: (currentGraphObject as! PenDrawObject).penDrawPoints)
							cgContext?.setLineDash(phase: 0, lengths: [4,2])
							cgContext?.setLineWidth(1)
							cgContext?.addRect(tempVar.boundingBox)
							cgContext?.strokePath()
						}
					case GraphObjectsClass.straightLineObjectID:
						if ((currentGraphObject as! StraightLineObject).startCoord != CGPoint(x: -1, y: -1) && (currentGraphObject as! StraightLineObject).endCoord != CGPoint(x: -1, y: -1)) {
							cgContext?.move(to: (currentGraphObject as! StraightLineObject).startCoord)
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! StraightLineObject).startCoord, size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! StraightLineObject).startCoord, size: CGSize(width: 5, height: 5)))
							
							cgContext?.move(to: (currentGraphObject as! StraightLineObject).endCoord)
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! StraightLineObject).endCoord, size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! StraightLineObject).endCoord, size: CGSize(width: 5, height: 5)))
							
							let tempVar : CGMutablePath = CGMutablePath.init()
							tempVar.addLines(between: [(currentGraphObject as! StraightLineObject).startCoord, (currentGraphObject as! StraightLineObject).endCoord])
							cgContext?.setLineDash(phase: 0, lengths: [4,2])
							cgContext?.setLineWidth(1)
							cgContext?.addRect(tempVar.boundingBox)
							cgContext?.strokePath()
						}
					case GraphObjectsClass.curvedLineObjectID:
						if ((currentGraphObject as! CurvedLineObject).bezierControlPoints.count == 3 && !(currentGraphObject as! CurvedLineObject).isCubic) {
							
							cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0])
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0], size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0], size: CGSize(width: 5, height: 5)))
							
							cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1])
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1], size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1], size: CGSize(width: 5, height: 5)))
							
							
							cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2])
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2], size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2], size: CGSize(width: 5, height: 5)))
							
							let tempVar : CGMutablePath = CGMutablePath.init()
							tempVar.addQuadCurve(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2], control: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1])
							cgContext?.setLineDash(phase: 0, lengths: [4,2])
							cgContext?.setLineWidth(1)
							cgContext?.addRect(tempVar.boundingBoxOfPath)
							cgContext?.strokePath()
							cgContext?.setLineDash(phase: 0, lengths: [4,4])
							cgContext?.addRect(tempVar.boundingBox)
							cgContext?.strokePath()
							
						} else if ((currentGraphObject as! CurvedLineObject).bezierControlPoints.count == 4 && (currentGraphObject as! CurvedLineObject).isCubic) {
							
							cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0])
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0], size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[0], size: CGSize(width: 5, height: 5)))
							
							cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1])
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1], size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1], size: CGSize(width: 5, height: 5)))
							
							
							cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2])
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2], size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2], size: CGSize(width: 5, height: 5)))
							
							cgContext?.move(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[3])
							cgContext?.setLineWidth(5)
							cgContext?.addRect(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[3], size: CGSize(width: 5, height: 5)))
							cgContext?.strokePath()
							cgContext?.setFillColor(CGColor.black)
							cgContext?.fill(CGRect.init(origin: (currentGraphObject as! CurvedLineObject).bezierControlPoints[3], size: CGSize(width: 5, height: 5)))
							
							let tempVar : CGMutablePath = CGMutablePath.init()
							tempVar.addCurve(to: (currentGraphObject as! CurvedLineObject).bezierControlPoints[3], control1: (currentGraphObject as! CurvedLineObject).bezierControlPoints[1], control2: (currentGraphObject as! CurvedLineObject).bezierControlPoints[2])
							cgContext?.setLineDash(phase: 0, lengths: [4,2])
							cgContext?.setLineWidth(1)
							cgContext?.addRect(tempVar.boundingBoxOfPath)
							cgContext?.strokePath()
							cgContext?.setLineDash(phase: 0, lengths: [4,4])
							cgContext?.addRect(tempVar.boundingBox)
							cgContext?.strokePath()
						}
					case GraphObjectsClass.textObjectID:
						var sizeToDraw : NSSize = NSSize.init()
						var lastCharIdx : Int = 0
						var maxWidth : Int = 0
						var height : Int = 0
						var currentLineWidth : Int = 0
						
						for (idx, character) in ((currentGraphObject as! TextObject).textView.string).enumerated() {
							if (character.isNewline && character != " ") {
								if (currentLineWidth > maxWidth) {
									maxWidth = currentLineWidth
									sizeToDraw = NSAttributedString.size(
										(currentGraphObject as! TextObject).textView
											.attributedString()
											.attributedSubstring(
												from: NSRange.init(lastCharIdx...idx-1)
											)
									)()
									
									lastCharIdx = idx + 1
									currentLineWidth = 0
								}
								height += 1
							} else {
								currentLineWidth += 1
							}
						}
						
						if (currentLineWidth > maxWidth) {
							maxWidth = currentLineWidth
							sizeToDraw = NSAttributedString.size(
								(currentGraphObject as! TextObject).textView.attributedString().attributedSubstring(
									from: NSRange.init(lastCharIdx...(currentGraphObject as! TextObject).textView.attributedString().length-1)
								)
							)()
							
							lastCharIdx = (currentGraphObject as! TextObject).textView.attributedString().length-1
							currentLineWidth = 0
						}
						
						
						
						cgContext?.move(to: (currentGraphObject as! TextObject).drawLocation)
						cgContext?.setLineWidth(5)
						cgContext?.setLineDash(phase: 0, lengths: [4,2])
						cgContext?.setLineWidth(1)
						
//						cgContext?.addRect(CGRect(x: (currentGraphObject as! textObject).drawLocation.x, y: (currentGraphObject as! textObject).drawLocation.y, width: currentGraphObject.width, height: currentGraphObject.height))
//						cgContext?.addRect(
//							CGRect.init(x: (currentGraphObject as! TextObject).drawLocation.x, y: (currentGraphObject as! TextObject).drawLocation.y, width: ceil(textStorage.boundingRect(with: textStorage.size(), options: []).width), height: ceil(textStorage.boundingRect(with: textStorage.size(), options: []).height))
//						)
						
						
						cgContext?.addRect(
							CGRect.init(
								origin: (currentGraphObject as! TextObject).drawLocation,
								size: NSSize.init(
									width: ceil(sizeToDraw.width + 10),
									height: ceil(sizeToDraw.height * CGFloat(height + 1))
									)
								)
						)
						
						cgContext?.strokePath()
					default: break
				}
			}
		}
	}
	
	//	public func penDraw() {
	//		GraphObjects.objectDict[GraphObjectsClass.penDrawObjectID]?.forEach { (object) in
	//			for (index, point) in ((object as! penDrawObject).penDrawPoints).enumerated() {
	//				if (index == 0) {
	////					pathDraw.move(to: point)
	//					cgContext?.move(to: point)
	//				} else {
	////					pathDraw.line(to: point)
	//					cgContext?.addLine(to: point)
	//				}
	//			}
	//			cgContext?.strokePath()
	//		}
	////			(object as! penDrawObject).penDrawPoints.forEach { (line) in
	////				for (index, point) in line.enumerated() {
	////
	////			}
	////		}
	//
	//	}
	//
	//	public func straightLineDraw() {
	//		GraphObjects.objectDict[GraphObjectsClass.straightLineObjectID]?.forEach { (object) in
	//			cgContext?.move(to: (object as! straightLineObject).startCoord)
	//			cgContext?.addLine(to: (object as! straightLineObject).endCoord)
	//			cgContext?.strokePath()
	//		}
	//	}
	//
	//	public func curvedLineDraw() {
	//		GraphObjects.objectDict[GraphObjectsClass.curvedLineObjectID]?.forEach { (object) in
	//			if ((object as! curvedLineObject).bezierControlPoints.count == 3) {
	//				cgContext?.move(to: (object as! curvedLineObject).bezierControlPoints[0])
	//				cgContext?.addQuadCurve(to: (object as! curvedLineObject).bezierControlPoints[2], control: (object as! curvedLineObject).bezierControlPoints[1] )
	//				cgContext?.strokePath()
	//
	//			} else if ((object as! curvedLineObject).bezierControlPoints.count == 4) {
	//				cgContext?.move(to: (object as! straightLineObject).startCoord)
	//				cgContext?.addCurve(to: (object as! curvedLineObject).bezierControlPoints[3], control1: (object as! curvedLineObject).bezierControlPoints[1], control2: (object as! curvedLineObject).bezierControlPoints[2])
	//				cgContext?.strokePath()
	//			}
	//		}
	//	}
	//
	//	public func textDraw() {
	//		GraphObjects.objectDict[GraphObjectsClass.textObjectID]?.forEach { (object) in
	//
	//			let attributes : [NSAttributedString.Key : Any] = [
	//				.font : NSFont.systemFont(ofSize: 12),
	//				.paragraphStyle : NSTextAlignment.center
	//			]
	//
	//			if (cgContext != nil) {
	//				CTLineDraw(CTLineCreateWithAttributedString(NSAttributedString(string: (object as! textObject).text as String, attributes: attributes)), cgContext!)
	//			}
	//
	//
	////
	////			let attributedString : NSAttributedString = NSAttributedString(string: (object as! textObject).text as String, attributes: attributes)
	////
	////			attributedString.draw(with: CGRect(x: (object as! textObject).drawLocation.x, y: (object as! textObject).drawLocation.y, width: (object as! textObject).width, height: (object as! textObject).height), options: .usesLineFragmentOrigin, context: nil)
	//		}
	//	}
	//
	//	public func selectAction() {
	//
	//	}
	//
}
