//
//  FocusManager.swift
//  AccessibilityBooster
//
//  Created by Ahmed on 13/03/2025.
//

import UIKit

public struct FocusManager {
    public static func setFocusOrder(for views: [UIView]) {
        for (index, view) in views.enumerated() {
            view.accessibilityElements = [views[(index + 1) % views.count]]
        }
    }
}
