//
//  curvedLineObject.swift
//  test3
//
//  Created by Aidan Liaw on 12/3/2022.
//

import Foundation

extension CurvedLineObject {
	static func ==(left : CurvedLineObject, right : CurvedLineObject) -> Bool {
		return (
			left.height == right.height &&
			left.width == right.width &&
			left.objectType == right.objectType &&
			left.parameters == right.parameters &&
			left.useAdvanced == right.useAdvanced &&
			left.bezierControlPoints == right.bezierControlPoints &&
			left.isCubic == right.isCubic
		)
	}
	
	static func !=(left : CurvedLineObject, right : CurvedLineObject) -> Bool {
		return (
			left.height != right.height ||
			left.width != right.width ||
			left.objectType != right.objectType ||
			left.parameters != right.parameters ||
			left.useAdvanced != right.useAdvanced ||
			left.bezierControlPoints != right.bezierControlPoints ||
			left.isCubic != right.isCubic
		)
	}
}

extension CGPoint {
	static func +(left : CGPoint, right : CGPoint) -> CGPoint {
		return CGPoint(x: left.x + right.x, y: left.y + right.y)
	}
	static func -(left : CGPoint, right : CGPoint) -> CGPoint {
		return CGPoint(x: left.x - right.x, y: left.y - right.y)
	}
	static func *(left : CGFloat, right : CGPoint) -> CGPoint {
		return CGPoint(x: left * right.x, y: left * right.y)
	}
}

class CurvedLineObject : GraphObject {
	var bezierControlPoints : [CGPoint]
	var isCubic : Bool
//	static var drawClosure : Any = { (self : curvedLineObject, cgContext : CGContext) in
//		if (self.bezierControlPoints.count == 3) {
//			cgContext.move(to: self.bezierControlPoints[0])
//			   cgContext.addQuadCurve(to: self.bezierControlPoints[2], control: self.bezierControlPoints[1])
//			   cgContext.strokePath()
//
//		   } else if (self.bezierControlPoints.count == 4) {
//			   cgContext.move(to: self.bezierControlPoints[0])
//			   cgContext.addCurve(to: self.bezierControlPoints[3], control1: self.bezierControlPoints[1], control2: self.bezierControlPoints[2])
//			   cgContext.strokePath()
//		   }
//	}
	
	init() {
		bezierControlPoints = [CGPoint]()
		isCubic = false
		super.init(typeInp: GraphObjectsClass.curvedLineObjectID)
	}
	
	func quadraticToCubic() {
		if (!isCubic && bezierControlPoints.count == 3) {
			var tempArr : [CGPoint] = [CGPoint]()
			tempArr[0] = bezierControlPoints[0]
			tempArr[1] = bezierControlPoints[0] + ((2/3)*(bezierControlPoints[1] - bezierControlPoints[0]))
			tempArr[2] = bezierControlPoints[1] + ((2/3)*(bezierControlPoints[1] - bezierControlPoints[2]))
			tempArr[3] = bezierControlPoints[2]
			bezierControlPoints.replaceSubrange((0..<tempArr.count), with: tempArr)
		}
	}
	
}
