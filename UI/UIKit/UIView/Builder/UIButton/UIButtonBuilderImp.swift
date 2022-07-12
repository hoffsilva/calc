//
//  UIButtonBuilderImp.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import Foundation
import UIKit

final class UIButtonBuilderImp<T: UIButton>: UIViewBuilderImp<T>, UIButtonBuilder {

    func withTitle(_ title: String?, state: UIControl.State) -> Self {
        view.setTitle(title, for: state)
        return self
    }
    
    func withFont(_ font: UIFont?) -> Self {
        view.titleLabel?.font = font
        return self
    }
    
    func withTitleColor(_ color: UIColor, state: UIControl.State) -> Self {
        view.setTitleColor(color, for: state)
        return self
    }
    
    func withColor(_ color: UIColor) -> Self {
        view.backgroundColor = color
        return self
    }
    
    func withImage(_ image: UIImage?, state: UIControl.State) -> Self {
        view.setImage(image, for: state)
        return self
    }
    
    func withBackgroundImage(_ image: UIImage?, state: UIControl.State) -> Self {
        view.setBackgroundImage(image, for: state)
        return self
    }
    
    func withLineBreak(_ lineBreakMode: NSLineBreakMode) -> Self {
        view.titleLabel?.lineBreakMode = lineBreakMode
        return self
    }
    
    func withTextAlignment(_ alignment: NSTextAlignment) -> Self {
        view.titleLabel?.textAlignment = alignment
        return self
    }
    
    func withAttributedTitle(_ attributtedTitle: NSAttributedString, state: UIControl.State) -> Self {
        view.setAttributedTitle(attributtedTitle, for: state)
        return self
    }
    
    func withContentHorizontalAlignment(_ alignment: UIControl.ContentHorizontalAlignment) -> Self {
        view.contentHorizontalAlignment = alignment
        return self
    }
    
    func withIsEnabled(_ enabled: Bool) -> Self {
        view.isEnabled = enabled
        return self
    }
    
}
