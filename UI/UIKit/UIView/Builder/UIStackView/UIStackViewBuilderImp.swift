//
//  UIStackViewBuilderImp.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import UIKit

final class UIStackViewBuilderImp<T: UIStackView>: UIViewBuilderImp<T>, UIStackViewBuilder {
    
    func withOrientation(_ orientation: NSLayoutConstraint.Axis) -> Self {
        view.axis = orientation
        return self
    }
    
    func withDistribution(_ distribuition: UIStackView.Distribution) -> Self {
        view.distribution = distribuition
        return self
    }
    
    func withAlignment(_ alignment: UIStackView.Alignment) -> Self {
        view.alignment = alignment
        return self
    }
    
    func withSpacing(_ spacing: CGFloat) -> Self {
        view.spacing = spacing
        return self
    }
    
}
