//
//  SystemColor.swift
//  List_SwiftUI
//
//  Created by humiao on 2019/9/4.
//  Copyright © 2019 syc. All rights reserved.
//

import Foundation
import UIKit

struct SystemColor {
    let name : String
    let color : UIColor
    
    static var allColors : [SystemColor] {
       return [SystemColor(name: "label", color: .label),
        SystemColor(name: "secondaryLabel", color: .secondaryLabel),
        SystemColor(name: "tertiaryLabel", color: .tertiaryLabel),
        SystemColor(name: "quaternaryLabel", color: .quaternaryLabel),
        SystemColor(name: "systemFill", color: .systemFill),
        SystemColor(name: "secondarySystemFill", color: .secondarySystemFill),
        SystemColor(name: "tertiarySystemFill", color: .tertiarySystemFill),
        SystemColor(name: "quaternarySystemFill", color: .quaternarySystemFill),
        SystemColor(name: "placeholderText", color: .placeholderText),
        SystemColor(name: "systemBackground", color: .systemBackground),
        SystemColor(name: "secondarySystemBackground", color: .secondarySystemBackground),
        SystemColor(name: "tertiarySystemBackground", color: .tertiarySystemBackground),
        SystemColor(name: "systemGroupedBackground", color: .systemGroupedBackground),
        SystemColor(name: "secondarySystemGroupedBackground", color: .secondarySystemGroupedBackground),
        SystemColor(name: "tertiarySystemGroupedBackground", color: .tertiarySystemGroupedBackground),
        SystemColor(name: "separator", color: .separator),
        SystemColor(name: "opaqueSeparator", color: .opaqueSeparator),
        SystemColor(name: "link", color: .link),
        SystemColor(name: "darkText", color: .darkText),
        SystemColor(name: "lightText", color: .lightText),
        SystemColor(name: "systemBlue", color: .systemBlue),
        SystemColor(name: "systemGreen", color: .systemGreen),
        SystemColor(name: "systemIndigo", color: .systemIndigo),
        SystemColor(name: "systemOrange", color: .systemOrange),
        SystemColor(name: "systemPink", color: .systemPink),
        SystemColor(name: "systemPurple", color: .systemPurple),
        SystemColor(name: "systemRed", color: .systemRed),
        SystemColor(name: "systemTeal", color: .systemTeal),
        SystemColor(name: "systemYellow", color: .systemYellow),
        SystemColor(name: "systemGray", color: .systemGray),
        SystemColor(name: "systemGray2", color: .systemGray2),
        SystemColor(name: "systemGray3", color: .systemGray3),
        SystemColor(name: "systemGray4", color: .systemGray4),
        SystemColor(name: "systemGray5", color: .systemGray5),
        SystemColor(name: "systemGray6", color: .systemGray6)
        ]
    }
    
}
