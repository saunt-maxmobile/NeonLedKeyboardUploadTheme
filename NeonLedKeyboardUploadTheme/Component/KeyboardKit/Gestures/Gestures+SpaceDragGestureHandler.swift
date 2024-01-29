//
//  Gestures+SpaceDragGestureHandler.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-04-01.
//  Copyright © 2021-2023 Daniel Saidi. All rights reserved.
//

import CoreGraphics

public extension Gestures {
    
    /**
     This drag gesture handler handles the space key gesture
     that moves the input cursor.
     
     KeyboardKit automatically creates an instance and binds
     it to ``KeyboardInputViewController/services``.
     */
    class SpaceDragGestureHandler: DragGestureHandler {
        
        /**
         Create a gesture handler instance.
         
         - Parameters:
           - sensitivity: The drag sensitivity, by default `.medium`.
           - verticalThreshold: The vertical threshold in points, by default `50`.
           - action: The action to perform when the offset changes.
         */
        public init(
            sensitivity: Gestures.SpaceDragSensitivity = .medium,
            verticalThreshold: Double = 50,
            action: @escaping (Int) -> Void
        ) {
            self.sensitivity = sensitivity
            self.verticalThreshold = verticalThreshold
            self.action = action
        }
        
        
        /// The drag sensitivity.
        public var sensitivity: Gestures.SpaceDragSensitivity
        
        /// The vertical threshold in points.
        public var verticalThreshold: Double
        
        /// The action to perform when the offset changes.
        public var action: (Int) -> Void
        
        
        /// The location where the current drag stated.
        public var currentDragStartLocation: CGPoint?
        
        /// The currently applied drag text position offset.
        public var currentDragTextPositionOffset: Int = 0
        
        /**
         Handle a drag gesture on space, which by default should
         move the cursor left and right after a long press.
         */
        public func handleDragGesture(
            from startLocation: CGPoint,
            to currentLocation: CGPoint
        ) {
            tryStartNewDragGesture(from: startLocation, to: currentLocation)
            let dragDelta = startLocation.x - currentLocation.x
            let textPositionOffset = Int(dragDelta / CGFloat(sensitivity.points))
            guard textPositionOffset != currentDragTextPositionOffset else { return }
            let offsetDelta = textPositionOffset - currentDragTextPositionOffset
            currentDragTextPositionOffset = textPositionOffset
            let verticalDistance = abs(startLocation.y - currentLocation.y)
            guard verticalDistance < verticalThreshold else { return }
            action(-offsetDelta)
        }
    }
}

#if os(iOS) || os(tvOS)
import UIKit

extension UITextDocumentProxy {

    /**
     This hopefully temporary multiplier offset is used when
     a drag gesture moves over a combined emoji.
     */
    func spaceDragOffset(for rawOffset: Int) -> Int? {
        let multiplier = spaceDragOffsetMultiplier(for: rawOffset)
        return rawOffset * (multiplier ?? 1)
    }

    /**
     This hopefully temporary multiplier is used when a drag
     gesture moves over a combined emoji.
     */
    func spaceDragOffsetMultiplier(for offset: Int) -> Int? {
        let char = spaceDragOffsetMultiplierCharacter(for: offset)
        return char?.spaceDragOffsetMultiplier
    }

    /**
     This hopefully temporary character is used when a space
     drag gesture moves over a combined emoji.
     */
    func spaceDragOffsetMultiplierCharacter(for offset: Int) -> String.Element? {
        if offset == 1 { return documentContextAfterInput?.first }
        if offset == -1 { return documentContextBeforeInput?.last }
        return nil
    }
}
#endif

extension String.Element {

    /**
     This hopefully temporary multiplier is used when a drag
     gesture moves over a combined emoji.
     */
    var spaceDragOffsetMultiplier: Int {
        guard isEmoji else { return 1 }
        return Int(floor(Double(utf8.count)/2))
    }
}

private extension Gestures.SpaceDragGestureHandler {

    func tryStartNewDragGesture(
        from startLocation: CGPoint,
        to currentLocation: CGPoint
    ) {
        let isNewDrag = currentDragStartLocation != startLocation
        currentDragStartLocation = startLocation
        guard isNewDrag else { return }
        currentDragTextPositionOffset = 0
    }
}
