//
//  CustomCurve.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 29/5/2022.
//

import Foundation

class CustomCurve : GraphObject {
	var isLinear : Bool
	var curveName : String
	var equation : String
	var isX : String
	var isY : String
	var variables : [String : Float]
	var varRanges : [String : NSRange]
	var advancedVarRanges : [String : NSRange]
	var constants : [String : Float]
	
	
	
	init() {
		isLinear = false
		curveName = ""
		equation = ""
		isX = ""
		isY = ""
		variables = [String : Float]()
		varRanges = [String : NSRange]()
		advancedVarRanges = [String : NSRange]()
		constants = [String : Float]()
		
		super.init(typeInp: GraphObjectsClass.customCurveObjectID)
	}
	
}

extension CustomCurve : Hashable {
	static func == (lhs: CustomCurve, rhs: CustomCurve) -> Bool {
		return (
			lhs.isLinear == rhs.isLinear &&
			lhs.curveName == rhs.curveName &&
			lhs.equation == rhs.equation &&
			lhs.isX == rhs.isX &&
			lhs.isY == rhs.isY &&
			lhs.variables == rhs.variables &&
			lhs.varRanges == rhs.varRanges &&
			lhs.advancedVarRanges == rhs.advancedVarRanges &&
			lhs.constants == rhs.constants
		)
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(isLinear)
		hasher.combine(curveName)
		hasher.combine(equation)
		hasher.combine(isX)
		hasher.combine(isY)
		hasher.combine(variables)
		hasher.combine(varRanges)
		hasher.combine(advancedVarRanges)
		hasher.combine(constants)
	}
}
