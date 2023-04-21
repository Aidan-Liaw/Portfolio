//
//  ViewController.swift
//  test3
//
//

import Cocoa

// The view controller of the graph drawing environment. It is subclassed from NSViewController
class GraphEnvironmentViewController: NSViewController {
	
	// The toolbar variable, which holds the toolbar within the graph drawing environment
	@IBOutlet var windowToolbar : GraphToolbar!
	
	// A static variable that holds an 8-bit integer representative of the action to be taken
	// -1 in this program means that not action is to take place
	static var actionInt : Int8 = -1

	// A variable that holds the actual graph view, where drawing takes place
	@IBOutlet weak var graphView : GraphView!
	
	// A variable that indicates whether the graph view should redraw its view
	var shouldDraw = false
	
	// A variable that is representative of the area to track cursor interactions
	var trackingArea : NSTrackingArea = NSTrackingArea.init()
	
	// A function that runs of the primary view of the view controller sucessfully loads
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// States that the view needs to redraw
		self.view.needsDisplay = true
		// Initialises the closures that hold the drawing logic
		graphView.varInit()
		// Initatlises the tracking area, stating that
		// - The area to track is the area of the graph view
		// - The area should be checking for mouse movements, and should always be active
		// - The tracking area is owned by the view controller and has zero user info
		trackingArea = NSTrackingArea.init(rect: graphView.bounds, options: NSTrackingArea.Options(rawValue: NSTrackingArea.Options.mouseMoved.rawValue|NSTrackingArea.Options.activeAlways.rawValue), owner: self, userInfo: nil)
		// The tracking area is added to the graph view
		graphView.addTrackingArea(trackingArea)
	}
	
	// A constant dictionary that converts graph object IDs to integers
	let objectIDToActionInt : [String : Int8] = [
		GraphObjectsClass.penDrawObjectID : 0,
		GraphObjectsClass.straightLineObjectID : 1,
		GraphObjectsClass.curvedLineObjectID : 2,
		GraphObjectsClass.textObjectID : 3
	]
}


