//
//  straightLineObject.swift
//  test3
//
//  Created by Aidan Liaw on 12/3/2022.
//

import Foundation

extension StraightLineObject {
	static func ==(left : StraightLineObject, right : StraightLineObject) -> Bool {
		return (
			left.height == right.height &&
			left.width == right.width &&
			left.objectType == right.objectType &&
			left.parameters == right.parameters &&
			left.useAdvanced == right.useAdvanced &&
			left.startCoord == right.startCoord &&
			left.endCoord == right.endCoord &&
			left.equation == right.equation &&
			left.gradient == right.gradient &&
			left.yIntercept == right.yIntercept
		)
	}
	
	static func !=(left : StraightLineObject, right : StraightLineObject) -> Bool {
		return (
			left.height != right.height ||
			left.width != right.width ||
			left.objectType != right.objectType ||
			left.parameters != right.parameters ||
			left.useAdvanced != right.useAdvanced ||
			left.startCoord != right.startCoord ||
			left.endCoord != right.endCoord ||
			left.equation != right.equation ||
			left.gradient != right.gradient ||
			left.yIntercept != right.yIntercept
		)
	}
}

class StraightLineObject : GraphObject {
	var startCoord : CGPoint
	var endCoord : CGPoint
	var equation : String
	var gradient : CGFloat
	var yIntercept : CGFloat
//	static var drawClosure : Any 
	
	init() {
		startCoord = CGPoint(x: -1, y: -1)
		endCoord = CGPoint(x: -1, y: -1)
		equation = ""
		gradient = 0
		yIntercept = CGFloat.infinity
		super.init(typeInp: GraphObjectsClass.straightLineObjectID)
	}
}
