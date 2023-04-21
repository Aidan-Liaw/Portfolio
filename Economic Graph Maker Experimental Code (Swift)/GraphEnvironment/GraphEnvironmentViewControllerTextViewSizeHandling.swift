//
//  GraphViewTextViewSizeHandling.swift
//  Economic Graph Maker Version 2
//
//  Created by Aidan Liaw on 13/6/2022.
//

import Foundation
import AppKit

extension GraphEnvironmentViewController : NSTextViewDelegate {
	func textDidBeginEditing(_ notification: Notification) {

	}
	
	func textDidChange(_ notification: Notification) {
		for textObject in (self.graphView.GraphObjects.filter({ $0.objectType == GraphObjectsClass.textObjectID }) as! [TextObject]) {
			// Code that removes the text box if the user removes all the text within it, thus auto-deleting the text box.
			// As this function only runs when the text changes, the text box is able to exist as an empty text box when first created, as the text contents have not yet changed
			if (textObject.textView.string.isEmpty) {
				// Removes the text box from the graph view
				textObject.textView.removeFromSuperview()
				// Rewrites the graph objects array so that the deleted text box is taken (or rather filtered) out
				self.graphView.GraphObjects = self.graphView.GraphObjects.filter({ $0 != textObject as GraphObject })
				// As the text box is now removed, we can now
				continue
			}
			// NSSize is a struct that contains a width and height variable
			// It holds the longest length of a given line
			var sizeToDraw : NSSize = NSSize.init(width: -1, height: -1)
			// The last character index
			var lastCharIdx : Int = 0
			// The number of lines within the text box
			var height : Int = 0
			
			// Enumerated means that the program is iterating through both the index of the characters within the text box, and the characters within the text box themselves
			for (idx, character) in (textObject.textView.string).enumerated() {
				// Runs if the character is a newline character
				// The index check is a sanity check so that if the user accidentally adds a newline character at the beginning, the NSRange does not state that the lower bound variable (in this case lastCharIdx) is greater than the upper bound variable (in this case idx-1)
				if (character.isNewline && character != " " && idx > 0) {
					// An if statement that compares a given line to the largest line width found
					// NSRange is an object that represents range, from a lower bound to an upper bound
					// It is the way that range literals are stored
					// The attributed string is used at it will take into consideration the width and the height of the text line with respect to the glyph (a character with specific characteristics, such as font, kerning, size) that will be drawn
					if (NSAttributedString.size(textObject.textView.attributedString().attributedSubstring(from: NSRange.init(lastCharIdx...idx-1)))().width
						> sizeToDraw.width) {
						// Updates the new longest width of a line
						sizeToDraw = NSAttributedString.size(
							textObject
								.textView
								.attributedString()
								.attributedSubstring(
									from: NSRange.init(lastCharIdx...idx-1)
								)
						)()
						
						// As the current character is a newline character, the next character of the new line should be thhe next character index
						lastCharIdx = idx + 1
					}
					// Height is incremented by one, as a newline represents a new line being created, thus increasing the height of the text box
					height += 1
				}
			}
			
			// A sanity check is done at the beginning, so that when the user adds a newline character, the lower bound of the NSRange variable does not exceede the length of the string
			if (lastCharIdx <= textObject.textView.attributedString().length-1 && NSAttributedString.size(textObject.textView.attributedString().attributedSubstring(
				from: NSRange.init(lastCharIdx...textObject.textView.attributedString().length-1)))().width > sizeToDraw.width) {
				sizeToDraw = NSAttributedString.size(
					textObject.textView
						.attributedString()
						.attributedSubstring(
							from: NSRange.init(lastCharIdx...textObject.textView.attributedString().length-1)
						)
				)()
			}
			// Height is incremented one final time, as the 0th line is not accounted for
			height += 1
			
//			textObject.textView.layoutManager?.ensureLayout(for: textObject.textView.textContainer!)
			// Changes the frame of the text box to its new size
			// Frame, is unlike bounds, as its origin is with respect to the superview, which in this case is the graph view
			textObject.textView.frame = .init(
				origin: textObject.drawLocation,
				size: NSSize.init(
					width: ceil(sizeToDraw.width + 10),
					height: ceil(sizeToDraw.height * CGFloat(height))
				)
			)
			
			// Tells the text object that its associated text view must redraw
			textObject.textView.viewWillDraw()
		}
	}
	
//	func textView(_ textView: NSTextView, clickedOn cell: NSTextAttachmentCellProtocol, in cellFrame: NSRect, at charIndex: Int) {
//		self.graphView.cgContext?.beginPath()
//		var sizeToDraw : NSSize = NSSize.init()
//		var lastCharIdx : Int = 0
//		var maxWidth : Int = 0
//		var height : Int = 0
//		var currentLineWidth : Int = 0
//
//		for (idx, character) in ((currentGraphObject as! TextObject).textView.string).enumerated() {
//			if (character.isNewline && character != " ") {
//				if (currentLineWidth > maxWidth) {
//					maxWidth = currentLineWidth
//					sizeToDraw = NSAttributedString.size(
//						(currentGraphObject as! TextObject).textView
//							.attributedString()
//							.attributedSubstring(
//								from: NSRange.init(lastCharIdx...idx-1)
//							)
//					)()
//
//					lastCharIdx = idx + 1
//					currentLineWidth = 0
//				}
//				height += 1
//			} else {
//				currentLineWidth += 1
//			}
//		}
//
//		if (currentLineWidth > maxWidth) {
//			maxWidth = currentLineWidth
//			sizeToDraw = NSAttributedString.size(
//				(currentGraphObject as! TextObject).textView.attributedString().attributedSubstring(
//					from: NSRange.init(lastCharIdx...(currentGraphObject as! TextObject).textView.attributedString().length-1)
//				)
//			)()
//
//			lastCharIdx = (currentGraphObject as! TextObject).textView.attributedString().length-1
//			currentLineWidth = 0
//		}
//
//		cgContext?.move(to: (currentGraphObject as! TextObject).drawLocation)
//		cgContext?.setLineWidth(5)
//		cgContext?.setLineDash(phase: 0, lengths: [4,2])
//		cgContext?.setLineWidth(1)
//
//		cgContext?.addRect(
//			CGRect.init(
//				origin: (currentGraphObject as! TextObject).drawLocation,
//				size: NSSize.init(
//					width: ceil(sizeToDraw.width + 10),
//					height: ceil(sizeToDraw.height * CGFloat(height + 1)
//					)
//				)
//			)
//		)
//
//		cgContext?.strokePath()
//		self.graphView.cgContext?.closePath()
//	}
//
//	func textDidEndEditing(_ notification: Notification) {
//		<#code#>
//	}
//
//	func textView(_ view: NSTextView, draggedCell cell: NSTextAttachmentCellProtocol, in rect: NSRect, event: NSEvent, at charIndex: Int) {
//		<#code#>
//	}
		
}

