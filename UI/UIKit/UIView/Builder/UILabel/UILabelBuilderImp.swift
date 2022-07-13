//
//  UILabelBuilderImp.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-13.
//

import UIKit

final class UILabelBuilderImp<T: UILabel>: UIViewBuilderImp<T>, UILabelBuilder {
    
    func withText(_ text: String?) -> Self {
        view.text = text
        return self
    }
    
    func withFont(_ font: UIFont?) -> Self {
        view.font = font
        return self
    }
    
    func withMinimumScaleFactor(_ scale: CGFloat) -> Self {
        view.minimumScaleFactor = scale
        view.adjustsFontSizeToFitWidth = true
        return self
    }
    
    func withColor(_ color: UIColor) -> Self {
        view.textColor = color
        return self
    }
    
    func withMultipleLines(_ lines: Int = 0) -> Self {
        view.numberOfLines = lines
        return self
    }
    
    func withLineBreakMode(_ lineBreakMode: NSLineBreakMode = .byTruncatingTail) -> Self {
        view.lineBreakMode = lineBreakMode
        return self
    }
    
    func withAlignment(_ orientation: NSTextAlignment) -> Self {
        view.textAlignment = orientation
        return self
    }
    
    func sizeToFit() -> Self {
        view.sizeToFit()
        return self
    }
    
}
