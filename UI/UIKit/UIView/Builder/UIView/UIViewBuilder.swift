//
//  UIViewBuilder.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import UIKit

protocol UIVIewBuilder {
    func unprepareForConstraints() -> Self
    func prepareForConstraints() -> Self
    func withClipsToBounds(_ clips: Bool) -> Self
    func withBackgroundColor(_ color: UIColor) -> Self
    func withTintColor(_ color: UIColor) -> Self
    func withAlpha(_ alpha: CGFloat) -> Self
    func withBorderWidth(_ width: CGFloat) -> Self
    func withBorderColor(_ color: UIColor) -> Self
    func withCornerRadius(_ cornerRadius: CGFloat) -> Self
    func withShadow(color: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) -> Self
    func withIsHidden(_ hidden: Bool) -> Self
    func withTag(_ tag: Int) -> Self
}
