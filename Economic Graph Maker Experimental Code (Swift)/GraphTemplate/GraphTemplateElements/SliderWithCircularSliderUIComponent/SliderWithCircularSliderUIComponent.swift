//
//  SliderWithCircularSliderUIComponent.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 2/6/2022.
//

import Cocoa

class SliderWithCircularSliderUIComponent: NSViewController, NSTextFieldDelegate {

	var rawValue : Double = 0
	
	@IBOutlet var UIView : NSView!
	
	@IBOutlet var varName : NSTextField!
	
	@IBOutlet var valueTextField : NSTextField!

	@IBOutlet var hSlider : NSSlider!
	
	@IBOutlet var cSlider : NSSlider!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
		valueTextField.delegate = self
		
		hSlider.target = self
		hSlider.action = #selector(self.hSliderDidChange(_:))
		hSlider.sendAction(on: NSEvent.EventTypeMask.init(
			rawValue: NSEvent.EventTypeMask.leftMouseDragged.rawValue
			| NSEvent.EventTypeMask.rightMouseDragged.rawValue)
		)
		hSlider.isContinuous = true
		self.hSlider.sendAction(#selector(self.hSliderDidChange(_:)), to: self)
		let hTrackingArea : NSTrackingArea = NSTrackingArea.init(rect: hSlider.bounds, options: NSTrackingArea.Options(rawValue: NSTrackingArea.Options.mouseMoved.rawValue|NSTrackingArea.Options.activeAlways.rawValue), owner: self, userInfo: nil)
		hSlider.addTrackingArea(hTrackingArea)
		
		
		hSlider.minValue = 0
		hSlider.maxValue = 360
		
		cSlider.target = self
		cSlider.action = #selector(self.cSliderDidChange(_:))
		cSlider.sendAction(on: NSEvent.EventTypeMask.init(
			rawValue: NSEvent.EventTypeMask.leftMouseDragged.rawValue
			| NSEvent.EventTypeMask.rightMouseDragged.rawValue)
		)
		cSlider.isContinuous = true
		self.cSlider.sendAction(#selector(self.cSliderDidChange(_:)), to: self)
		let cTrackingArea : NSTrackingArea = NSTrackingArea.init(rect: hSlider.bounds, options: NSTrackingArea.Options(rawValue: NSTrackingArea.Options.mouseMoved.rawValue|NSTrackingArea.Options.activeAlways.rawValue), owner: self, userInfo: nil)
		hSlider.addTrackingArea(cTrackingArea)
		
		
		cSlider.minValue = 0
		cSlider.maxValue = 360
		
		
		NSEvent.addLocalMonitorForEvents(matching: NSEvent.EventTypeMask.init(rawValue: NSEvent.EventTypeMask.leftMouseDragged.rawValue | NSEvent.EventTypeMask.rightMouseDragged.rawValue)) { (event) -> NSEvent? in
			if (self.hSlider.isMousePoint(self.hSlider.convert(self.view.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view), in: self.hSlider.bounds)) {
				
				self.hSlider.sendAction(#selector(self.hSliderDidChange(_:)), to: self)
				
			} else if (self.cSlider.isMousePoint(self.cSlider.convert(self.view.window?.mouseLocationOutsideOfEventStream ?? CGPoint(x: 0, y: 0), from: self.view), in: self.cSlider.bounds)) {
				
				self.cSlider.sendAction(#selector(self.cSliderDidChange(_:)), to: self)
			
			}
			return event
		}
	}
	
	func defineBounds(LB : Double, UB : Double) {
		hSlider.minValue = LB
		hSlider.maxValue = UB
		
		cSlider.minValue = LB
		cSlider.maxValue = UB
	}
	
	@objc func hSliderDidChange(_ sender : Any) {
		valueTextField.doubleValue = hSlider.doubleValue
		cSlider.doubleValue = hSlider.doubleValue
		rawValue = valueTextField.doubleValue
	}
	
	@objc func cSliderDidChange(_ sender : Any) {
		valueTextField.doubleValue = cSlider.doubleValue
		hSlider.doubleValue = cSlider.doubleValue
		rawValue = valueTextField.doubleValue
	}
	
	func controlTextDidChange(_ obj: Notification) {
		hSlider.doubleValue = valueTextField.doubleValue
		cSlider.doubleValue = valueTextField.doubleValue
		rawValue = hSlider.doubleValue
	}
	
//	func textDidChange(_ notification: Notification) {
//		hSlider.doubleValue = valueTextField.doubleValue
//		cSlider.doubleValue = valueTextField.doubleValue
//		rawValue = hSlider.doubleValue
//	}
    
}
