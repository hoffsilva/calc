//
//  UIStackViewBuilder.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import UIKit

protocol UIStackViewBuilder {
    func withOrientation(_ orientation: NSLayoutConstraint.Axis) -> Self
    func withDistribution(_ distribuition: UIStackView.Distribution) -> Self
    func withAlignment(_ alignment: UIStackView.Alignment) -> Self
    func withSpacing(_ spacing: CGFloat) -> Self
}
