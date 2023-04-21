//
//  TemplateAttributesView.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 28/5/2022.
//

import Cocoa
import AppKit

class TemplateAttributesViewController: NSViewController, NSTextFieldDelegate, NSTextDelegate, NSStackViewDelegate {

	var viewID = [NSView : String]()
	
	@IBOutlet var templateAttributesView : NSView!
	
	@IBOutlet var curveNameTextField : NSTextField!
	
	@IBOutlet var curveNameTextFieldCell : NSTextFieldCell!
	
	@IBOutlet var customAttributesScrollView : NSScrollView!
	
	@IBOutlet var customAttributesClipView : NSClipView!
	
	@IBOutlet var customAttributesStackView : AttributesStackView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
		
		customAttributesScrollView.documentView?.canDrawConcurrently = true
		
		customAttributesScrollView.hasVerticalScroller = true
		customAttributesScrollView.hasHorizontalScroller = false
		
//		customAttributesStackView.alignment = .top
		customAttributesStackView.orientation = .vertical
		customAttributesStackView.spacing = 5
		
//		customAttributesScrollView.setBoundsSize(size)
//		customAttributesScrollView.setFrameSize(size)
		
		for _ in 0...0 {
			addUIElementToNSSTackView(storyboardName: "AdvancedOptionsCheckboxUIComponent")
			addUIElementToNSSTackView(storyboardName: "CheckboxUIComponent")
			addUIElementToNSSTackView(storyboardName: "SliderUIComponent")
			addUIElementToNSSTackView(storyboardName: "SliderWithCircularSliderUIComponent")
		}
		customAttributesStackView.addView(NSView.init(), in: .top)
//
//		let size = NSSize.init(width: (NSScreen.main?.frame.size.width)!/4, height:  (NSScreen.main?.frame.size.height)!/4)
//
//		customAttributesScrollView.documentView?.setFrameSize(size)
//		customAttributesScrollView.documentView?.setBoundsSize(size)

    }
	
	var storyboardNameToType : [String : AnyClass] = [
		"AdvancedOptionsCheckboxUIComponent" : AdvancedOptionsCheckboxUIComponent.self,
		"CheckboxUIComponent" : CheckboxUIComponent.self,
		"SliderUIComponent" : SliderUIComponent.self,
		"SliderWithCircularSliderUIComponent" : SliderWithCircularSliderUIComponent.self
	]
	
	func addUIElementToNSSTackView(storyboardName name : String) {
		let storyboard = NSStoryboard.init(name: NSStoryboard.Name.init(stringLiteral: name), bundle: nil)
		let viewController = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier.init(stringLiteral: "\(name)ID"))
		let UIView : NSView = (viewController as AnyObject).view
		
//		if (customAttributesStackView.views.isEmpty) {
//			UIView.translatesAutoresizingMaskIntoConstraints = false
//			UIView.constraints. = customAttributesStackView.Top
////			UIView.topAnchor.constraint(equalTo: customAttributesStackView.topAnchor).isActive = true
//		}
		
//		print("\n\(UIView.className): \(UIView.constraints.isEmpty)")
//		UIView.subviews.forEach {
//			idx in print("\t \(idx.className): \(idx.constraints.isEmpty)")
//		}
//
//		var constraintsArray : [NSLayoutConstraint] = [NSLayoutConstraint]()
//
//		if (customAttributesStackView.views.isEmpty) {
//			constraintsArray.append(NSLayoutConstraint.init(item: UIView, attribute: .top, relatedBy: .equal, toItem: customAttributesStackView, attribute: .bottom, multiplier: 1, constant: 0) as NSLayoutConstraint)
//			constraintsArray.last?.isActive = true
//		} else {
//			constraintsArray.append(NSLayoutConstraint.init(item: UIView, attribute: .top, relatedBy: .equal, toItem: customAttributesStackView.views.last, attribute: .bottom, multiplier: 1, constant: 0))
//			constraintsArray.last?.isActive = true
//		}
//		constraintsArray.append(NSLayoutConstraint.init(item: UIView, attribute: .leading, relatedBy: .equal, toItem: customAttributesStackView, attribute: .leading, multiplier: 1, constant: 0))
//		constraintsArray.last?.isActive = true
//		constraintsArray.append(NSLayoutConstraint.init(item: UIView, attribute: .trailing, relatedBy: .equal, toItem: customAttributesStackView, attribute: .trailing, multiplier: 1, constant: 0))
//		constraintsArray.last?.isActive = true
//
//		UIView.addConstraints(constraintsArray)
		customAttributesStackView.addView(UIView, in: .top)

//		
//		
//		
//		customAttributesScrollView.setFrameSize(customAttributesScrollView.contentSize)
//		customAttributesScrollView.updateConstraints()
//		customAttributesScrollView.updateConstraintsForSubtreeIfNeeded()
//		
//		
//		let newWidth = customAttributesScrollView.bounds.width
//		var newHeight = CGFloat(customAttributesStackView.views.count) * customAttributesStackView.spacing
//		for view in customAttributesStackView.views {
//			newHeight += view.bounds.height
//		}
//		customAttributesScrollView.documentView?.frame = NSRect.init(origin: CGPoint.init(), size: CGSize.init(width: newWidth, height: newHeight))
	}
	
	
//	func addSliderUIComponent() {
//
//	}
//
//	func addSliderWithCircularSliderUIComponent() {
//
//	}
//
//	func addCheckboxUIComponent() {
//
//	}
//
//	func addAdvancedOptionsCheckboxUIComponent() {
//
//	}
	
	
}
