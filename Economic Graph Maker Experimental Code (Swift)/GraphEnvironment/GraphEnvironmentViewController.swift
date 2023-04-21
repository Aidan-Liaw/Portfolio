//
//  ViewController.swift
//  test3
//
//  Created by Aidan Liaw on 30/1/2022.
//

import Cocoa

class GraphEnvironmentViewController: NSViewController, NSTextInput, XMLParserDelegate {
	
	@IBOutlet var windowToolbar : GraphToolbar!
	
//	override func windowTitle(forDocumentDisplayName displayName : String) -> String {
//		return "Economics Graph Maker"
//	}
	
	@IBOutlet weak var userText: NSTextFieldCell!
	
	static var actionInt : Int8 = -1

	@IBOutlet weak var graphView : GraphView!
	
	@IBOutlet weak var graphToolbar: GraphToolbar!
	
	@IBOutlet var settingsPaneView: NSView!
	
	@IBOutlet var graphPresetsScrollView: NSScrollView!
	
	@IBOutlet var graphPresetsClipView: NSClipView!
	
	@IBOutlet var graphPresetsOutlineView: NSOutlineView!
	
	@IBOutlet var graphPresetsTableColumn: NSTableColumn!
	
	
	var shouldDraw = false
	
	var trackingArea : NSTrackingArea = NSTrackingArea.init()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
//		view.removeConstraints(view.constraints)

		// Do any additional setup after loading the view.
//		self.view.displayIfNeeded()
		// Can use and should use above to avoid dumb redrawing
		self.view.needsDisplay = true
		graphView.varInit()
		trackingArea = NSTrackingArea.init(rect: graphView.bounds, options: NSTrackingArea.Options(rawValue: NSTrackingArea.Options.mouseMoved.rawValue|NSTrackingArea.Options.activeAlways.rawValue), owner: self, userInfo: nil)
		graphView.addTrackingArea(trackingArea)
		graphView.varInit()
		
//		NSEvent.addLocalMonitorForEvents(matching: .keyDown) { (event) -> NSEvent? in
//			self.keyDown(with: event)
//			return event
//		}
		
//		var responderObserver : NotificationCenter = NotificationCenter.default
		
//		responderObserver.addObserver(self, selector: #selector(), name: <#T##NSNotification.Name?#>, object: <#T##Any?#>)
		
//		graphView.becomeFirstResponder()
//		graphView.appearance = NSAppearance(named: .aqua)
	}
	
	
	func invokeUndo() {
		graphView.needsDisplay = true
		graphView.viewWillDraw()
		graphView.needsDisplay = false
		
	}
	
	func invokeRedo() {
		graphView.needsDisplay = true
		graphView.viewWillDraw()
		graphView.needsDisplay = false
	}
	
	let objectIDToActionInt : [String : Int8] = [
		GraphObjectsClass.penDrawObjectID : 0,
		GraphObjectsClass.straightLineObjectID : 1,
		GraphObjectsClass.curvedLineObjectID : 2,
		GraphObjectsClass.textObjectID : 3
	]
	
//	override func insertText(_ insertString: Any) {
//		super.insertText(insertString)
//	}
	
	override func value(forKey key: String) -> Any? {
		super.value(forKey: key)
	}
	
	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
//			graphView.needsDisplay = true
		}
	}
	
//	func textViewDidChangeSelection(_ notification: Notification) {
//		<#code#>
//	}
//
//	func textDidBeginEditing(_ notification: Notification) {
//		<#code#>
//	}
//
//	func textDidEndEditing(_ notification: Notification) {
//		<#code#>
//	}
//
//	func textDidChange(_ notification: Notification) {
//		<#code#>
//	}
//
//	func textShouldBeginEditing(_ textObject: NSText) -> Bool {
//		<#code#>
//	}
//
//	func textShouldEndEditing(_ textObject: NSText) -> Bool {
//		<#code#>
//	}
//
//	func textView(_ textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int) {
//		<#code#>
//	}
//
//	func textView(_ textView: NSTextView, doubleClickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int) {
//		<#code#>
//	}
//
//	func textView(_ view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: NSRect, event: NSEvent, at charIndex: Int) {
//		<#code#>
//	}
	
}


