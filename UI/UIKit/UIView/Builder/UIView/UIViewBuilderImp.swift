//
//  UIViewBuilderImp.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import UIKit

class UIViewBuilderImp<T: UIView>: UIVIewBuilder {
    
    var view: T
    
    init(customComponentInit: (() -> T) = { T.init() }) {
        self.view = customComponentInit()
    }
    
    func unprepareForConstraints() -> Self {
        view.unprepareForConstraints()
        return self
    }
    
    func prepareForConstraints() -> Self {
        view.prepareForConstraints()
        return self
    }
    
    func withClipsToBounds(_ clips: Bool) -> Self {
        view.clipsToBounds = clips
        return self
    }
    
    func withBackgroundColor(_ color: UIColor) -> Self {
        view.backgroundColor = color
        return self
    }
    
    func withTintColor(_ color: UIColor) -> Self {
        view.tintColor = color
        return self
    }
    
    func withAlpha(_ alpha: CGFloat) -> Self {
        view.alpha = alpha
        return self
    }
    
    func withBorderWidth(_ width: CGFloat)  -> Self {
        view.layer.borderWidth = width
        return self
    }
    
    func withBorderColor(_ color: UIColor)  -> Self {
        view.layer.borderColor = color.cgColor
        return self
    }
    
    func withCornerRadius(_ cornerRadius: CGFloat) -> Self {
        view.layer.cornerRadius = cornerRadius
        return self
    }
    
    func withShadow(color: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) -> Self {
        view.layer.shadowColor = color.cgColor
        view.layer.shadowOpacity = opacity
        view.layer.shadowOffset = offset
        view.layer.shadowRadius = radius
        view.layer.shouldRasterize = false
        view.clipsToBounds = false
        return self
    }
    
    func withIsHidden(_ hidden: Bool) -> Self {
        view.isHidden = hidden
        return self
    }
    
    func withTag(_ tag: Int) -> Self {
        view.tag = tag
        return self
    }
    
    func build() -> T {
        return view
    }
    
    
}
