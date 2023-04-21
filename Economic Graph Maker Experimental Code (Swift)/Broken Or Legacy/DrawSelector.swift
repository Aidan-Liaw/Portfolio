//
//  DrawSelector.swift
//  test3
//
//  Created by Aidan Liaw on 3/3/2022.
//

import Foundation

class DrawSelector {
	var functionSelector : [String : Int] = [
		"penDraw" : 0,
		"straightLineDraw" : 1,
		"curvedLineDraw" : 2,
		"textDraw" : 3,
		"selectItem" : 4,
	]

	func penDrawFunc()  { print("Hi1") }
	func straightLineDraw() { print("Hi1") }
	func curvedLineDraw() { print("Hi1") }
	func textDraw() { print("Hi1") }
	func selectItem() { print("Hi1") }
	
	

	var funcDict : [String : (Any) -> Any] = [:]
	
//	init() {
//		var tempVar : [String : (Any) -> Any] = [
//			"penDraw" : penDrawFunc,
//			"straightLineDraw" : straightLineDraw,
//			"curvedLineDraw" : curvedLineDraw,
//			"textDraw" : textDraw,
//			"selectItem" : selectItem
//		]
//		self.funcDict = tempVar
//	}

	typealias AnyFunction = (Any...) -> [Any]
	typealias VoidFunction = () -> Void
	
//	var funcArr = Array<(Any...) -> [Any]> ()
//	var funcArr = [() -> Void]()
	var funcArr = [VoidFunction]()
//	funcArr.append(straightLineDraw)
	
	
//	funcArr.append(MyFuncs.penDraw(penDrawFunc))
//	funcArr.append(MyFuncs.Arity2(someFunc))
	
	

	
//
//	func populateFuncArr() {
//		var tempVar : VoidFunction = penDrawFunc
//		self.funcArr.append(tempVar)
//
//	}

}
