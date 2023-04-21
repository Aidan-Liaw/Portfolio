//
//  TextField.swift
//  test3
//
//  Created by Aidan Liaw on 18/3/2022.
//

import Cocoa

class TextField: NSTextField {

	@IBOutlet weak var editingText: NSTextFieldCell!
	@IBAction func test(_ sender: Any) {
	}
	@IBAction func test2(_ sender: Any) {
	}
	
	override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
    }
    
}
