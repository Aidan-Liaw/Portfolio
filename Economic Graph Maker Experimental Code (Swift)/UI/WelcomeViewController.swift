//
//  WelcomeView.swift
//  test3
//
//  Created by Aidan Liaw on 30/4/2022.
//

import Cocoa

@objc
class WelcomeViewController: NSViewController {
	
	
	@IBOutlet var WelcomeView: NSView!
	
	@IBOutlet weak var AppLogo: NSImageView!

	@IBOutlet weak var TitleTextField: NSTextField!

	@IBOutlet weak var TitleTextFieldCell: NSTextFieldCell!

	@IBOutlet weak var NewButton: NSButton!

	@IBOutlet weak var OpenButton: NSButton!

	@IBOutlet weak var AboutButton: NSButton!

	@IBOutlet weak var SettingsButton: NSButton!
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
//		
//		self.WelcomeView = NSView.init(frame: NSRect.init(origin: self.preferredScreenOrigin, size: self.preferredMaximumSize))
//		self.TitleTextField.draw(WelcomeView.frame)
//		self.NewButton.draw(WelcomeView.frame)
//		TitleTextField.font = .systemFont(ofSize: 16)
//
//		self.view.needsDisplay = true
//		self.view.needsLayout = true
//		self.view.viewWillDraw()
//		self.view.needsDisplay = false
//		self.view.needsLayout = false
	}
	
//	@IBAction func NewButtonPressed(sender: AnyObject) {
////		AppDelegate.contentViewController = GraphEnvironmentViewController()
////		GraphEnvironmentViewController
////		addLine.action = #selector(graphView.drawLine(_:))
//	}

}
