//
//  UIButtonBuilder.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import Foundation
import UIKit

protocol UIButtonBuilder {
    func withTitle(_ title: String?, state: UIControl.State) -> Self
    func withFont(_ font: UIFont?) -> Self
    func withTitleColor(_ color: UIColor, state: UIControl.State) -> Self
    func withColor(_ color: UIColor) -> Self
    func withImage(_ image: UIImage?, state: UIControl.State) -> Self
    func withBackgroundImage(_ image: UIImage?, state: UIControl.State) -> Self
    func withLineBreak(_ lineBreakMode: NSLineBreakMode) -> Self
    func withTextAlignment(_ alignment: NSTextAlignment) -> Self
    func withAttributedTitle(_ attributtedTitle: NSAttributedString, state: UIControl.State) -> Self
    func withContentHorizontalAlignment(_ alignment: UIControl.ContentHorizontalAlignment) -> Self
    func withIsEnabled(_ enabled: Bool) -> Self
}
