//
//  penDrawObject.swift
//  test3
//
//  Created by Aidan Liaw on 12/3/2022.
//

import Foundation

extension PenDrawObject {
	static func ==(left : PenDrawObject, right : PenDrawObject) -> Bool {
		return (
			left.height == right.height &&
			left.width == right.width &&
			left.objectType == right.objectType &&
			left.parameters == right.parameters &&
			left.useAdvanced == right.useAdvanced &&
			left.penDrawPoints == right.penDrawPoints
		)
	}
	
	static func !=(left : PenDrawObject, right : PenDrawObject) -> Bool {
		return (
			left.height != right.height ||
			left.width != right.width ||
			left.objectType != right.objectType ||
			left.parameters != right.parameters ||
			left.useAdvanced != right.useAdvanced ||
			left.penDrawPoints != right.penDrawPoints
		)
	}
}

class PenDrawObject : GraphObject {
	var penDrawPoints : [CGPoint]
//	static var drawClosure : Any = { (self : GraphObject, cgContext : CGContext) in
//		cgContext.addLines(between: self.penDrawPoints)
//		cgContext.strokePath()
//	}
	
	init() {
		penDrawPoints =  [CGPoint]()
		super.init(typeInp: GraphObjectsClass.penDrawObjectID)
	}
}
