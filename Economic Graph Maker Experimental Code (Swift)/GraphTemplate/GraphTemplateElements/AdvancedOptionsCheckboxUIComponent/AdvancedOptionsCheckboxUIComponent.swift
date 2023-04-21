//
//  AdvancedOptionsCheckboxUIComponent.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 2/6/2022.
//

import Cocoa

class AdvancedOptionsCheckboxUIComponent: NSViewController {

	@IBOutlet var UIView: NSView!
	
	@IBOutlet var toggleAdvButton: NSButton!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
		
		toggleAdvButton.setButtonType(.pushOnPushOff)
		toggleAdvButton.state = .off
		toggleAdvButton.action = #selector(toggleButton(_:))
    }
	
	@IBAction @objc func toggleButton(_ sender : Any) {
		toggleAdvButton.setNextState()
		print(toggleAdvButton.state)
	}
    
}
