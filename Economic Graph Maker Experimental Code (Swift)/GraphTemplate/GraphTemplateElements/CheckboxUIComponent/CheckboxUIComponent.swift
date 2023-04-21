//
//  CheckboxUIComponent.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 2/6/2022.
//

import Cocoa

class CheckboxUIComponent: NSViewController {
	
	@IBOutlet var UIView : NSView!
	
	@IBOutlet var toggleButton : NSButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
		
		toggleButton.setButtonType(.switch)
		toggleButton.state = .off
		toggleButton.action = #selector(toggleButton(_:))
    }
	
	@IBAction @objc func toggleButton(_ sender : Any) {
		toggleButton.setNextState()
		print(toggleButton.state)
	}
    
}
