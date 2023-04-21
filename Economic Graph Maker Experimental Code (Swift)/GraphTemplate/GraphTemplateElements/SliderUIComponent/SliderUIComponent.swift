//
//  SliderUIComponent.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 2/6/2022.
//

import Cocoa

class SliderUIComponent: NSViewController, NSTextFieldDelegate {
	
	var rawValue : Double = 0
	
	@IBOutlet var UIView : NSView!
	
	@IBOutlet var varName : NSTextField!
	
	@IBOutlet var valueTextField : NSTextField!

	@IBOutlet var hSlider : NSSlider!

	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
		valueTextField.delegate = self
		hSlider.sendAction(on: NSEvent.EventTypeMask.init(
			rawValue: NSEvent.EventTypeMask.leftMouseDragged.rawValue
			| NSEvent.EventTypeMask.rightMouseDragged.rawValue)
		)
		hSlider.target = self
		hSlider.action = #selector(self.sliderDidChange(_:))
		hSlider.isContinuous = true
		self.hSlider.sendAction(#selector(self.sliderDidChange(_:)), to: self)
		
		let trackingArea : NSTrackingArea = NSTrackingArea.init(rect: hSlider.bounds, options: NSTrackingArea.Options(rawValue: NSTrackingArea.Options.mouseMoved.rawValue|NSTrackingArea.Options.activeAlways.rawValue), owner: self, userInfo: nil)
		hSlider.addTrackingArea(trackingArea)
		
		NSEvent.addLocalMonitorForEvents(matching: NSEvent.EventTypeMask.init(rawValue: NSEvent.EventTypeMask.leftMouseDragged.rawValue | NSEvent.EventTypeMask.rightMouseDragged.rawValue)) { (event) -> NSEvent? in
			self.hSlider.sendAction(#selector(self.sliderDidChange(_:)), to: self)
			return event
		}
    }
	
	func defineBounds(LB : Double, UB : Double) {
		hSlider.minValue = LB
		hSlider.maxValue = UB
	}
	
	@objc @IBAction func sliderDidChange(_ sender: Any) {
		valueTextField.doubleValue = hSlider.doubleValue
		valueTextField.stringValue = String(hSlider.doubleValue)
		rawValue = valueTextField.doubleValue
		valueTextField.viewWillDraw()
	}
	
	func textDidChange(_ notification: Notification) {
		hSlider.doubleValue = valueTextField.doubleValue
		rawValue = hSlider.doubleValue
	}
	
	
    
}
