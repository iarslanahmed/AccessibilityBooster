//
//  VoiceOverTesting.swift
//  AccessibilityBooster
//
//  Created by Ahmed on 13/03/2025.
//

import UIKit

public struct VoiceOverTesting {
    public static func simulateVoiceOver(for view: UIView) {
        UIAccessibility.post(notification: .screenChanged, argument: view)
    }
}
