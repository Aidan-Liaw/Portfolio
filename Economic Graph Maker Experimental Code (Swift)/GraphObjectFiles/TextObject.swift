//
//  textObject.swift
//  test3
//
//  Created by Aidan Liaw on 12/3/2022.
//

import Foundation
import AppKit

extension TextObject {
	static func ==(left : TextObject, right : TextObject) -> Bool {
		return (
			left.height == right.height &&
			left.width == right.width &&
			left.objectType == right.objectType &&
			left.parameters == right.parameters &&
			left.useAdvanced == right.useAdvanced &&
			left.textView == right.textView &&
			left.drawLocation == right.drawLocation
		)
	}
	
	static func !=(left : TextObject, right : TextObject) -> Bool {
		return (
			left.height != right.height ||
			left.width != right.width ||
			left.objectType != right.objectType ||
			left.parameters != right.parameters ||
			left.useAdvanced != right.useAdvanced ||
			left.textView != right.textView ||
			left.drawLocation != right.drawLocation
		)
	}
}

class TextObject : GraphObject {
	var textView : NSTextView
	var drawLocation : CGPoint
//	static var drawClosure : Any
	
	init() {
		textView = NSTextView.init()
		drawLocation = CGPoint(x: -1, y: -1)
		
		super.init(typeInp: GraphObjectsClass.textObjectID)
		
//		textView.delegate = self
	}
}

//extension TextObject : NSTextViewDelegate {
//	func isEqual(_ object: Any?) -> Bool {
//		if ((object as? TextObject) != nil) {
//			return (object as! TextObject) == self
//		} else { return false }
//	}
//
//	var hash: Int {
//		self.hash
//	}
//
//	var superclass: AnyClass? {
//		self.superclass
//	}
//
//	func `self`() -> Self {
//		self.`self`()
//	}
//
//	func perform(_ aSelector: Selector!) -> Unmanaged<AnyObject>! {
//		return nil
//	}
//
//	func perform(_ aSelector: Selector!, with object: Any!) -> Unmanaged<AnyObject>! {
//		return nil
//	}
//
//	func perform(_ aSelector: Selector!, with object1: Any!, with object2: Any!) -> Unmanaged<AnyObject>! {
//		return nil
//	}
//
//	func isProxy() -> Bool {
//		return true
//	}
//
//	func isKind(of aClass: AnyClass) -> Bool {
//		return aClass == GraphObject.self
//	}
//
//	func isMember(of aClass: AnyClass) -> Bool {
//		return (aClass as? Self.Type) != nil
//	}
//
//	func conforms(to aProtocol: Protocol) -> Bool {
//		return aProtocol.self is NSTextViewDelegate
//	}
//
//	func responds(to aSelector: Selector!) -> Bool {
//		return false
//	}
//
//	var description: String {
//		return ""
//	}
//
//	func textDidChange(_ notification: Notification) {
//		self.textView.needsDisplay = true
//		self.textView.needsLayout = true
//
//		self.textView.frame = .init(origin: self.drawLocation, size: CGSize(width: ceil(self.textView.textStorage?.size().width ?? 0), height: ceil(self.textView.textStorage?.size().height ?? 0)))
//
//		self.textView.viewWillDraw()
//		self.textView.needsDisplay = false
//		self.textView.needsLayout = false
////		self.textView.frame
//	}
//}
