//
//  UILabelBuilder.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-13.
//

import UIKit

protocol UILabelBuilder {
    func withText(_ text: String?) -> Self
    func withFont(_ font: UIFont?) -> Self
    func withMinimumScaleFactor(_ scale: CGFloat) -> Self
    func withColor(_ color: UIColor) -> Self
    func withMultipleLines(_ lines: Int) -> Self
    func withLineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self
    func withAlignment(_ orientation: NSTextAlignment) -> Self
    func sizeToFit() -> Self
}
