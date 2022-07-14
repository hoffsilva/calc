//
//  UIView+Extension.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import UIKit

extension UIView {
    
    func setCornerRadius(color: CGColor = UIColor.white.cgColor, width: CGFloat = 1.0, radius: CGFloat = 4 ) {
        self.layer.cornerRadius = radius
        self.layer.borderWidth = width
        self.layer.masksToBounds = true
        self.layer.borderColor = color
    }
    
    func setCircleView(borderWidth: CGFloat? = nil){
        //Create path
        let path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: frame.width, height: frame.height));
        
        //Update mask
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
        
        //Create framelayer to put an border
        let frameLayer = CAShapeLayer()
        frameLayer.path = path.cgPath
        frameLayer.lineWidth = borderWidth ?? 0
        frameLayer.strokeColor = UIColor.white.cgColor
        frameLayer.fillColor = nil
        
        layer.addSublayer(frameLayer)
    }
    
    public func roundCorners(corners: CACornerMask, radius: CGFloat) {
        layer.cornerRadius = radius
        layer.maskedCorners = corners
    }
    
    public func addBorders(width: CGFloat, color: UIColor, radius: CGFloat, isRounded: Bool) {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
        layer.cornerRadius = radius
        layer.masksToBounds = isRounded
    }
    
    public func unprepareForConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = true
    }
    
    public func prepareForConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    public func pinEdgesToSuperview(_ constant: CGFloat = 0.0) {
        self.pinTop(constant)
        self.pinBottom(constant)
        self.pinRight(constant)
        self.pinLeft(constant)
    }
    
    public func pinEdgesToSafeArea(_ constant: CGFloat = 0.0) {
        self.pinSafeTop(constant)
        self.pinSafeBottom(constant)
        self.pinRight(constant)
        self.pinLeft(constant)
    }
    
    public func setSize(size: CGSize) {
        self.height(with: size.width)
        self.width(with: size.height)
    }
    
    @discardableResult
    public func centerVertically(_ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = self.superview else {
            return nil
        }
        let constraint = self.centerYAnchor.constraint(equalTo: superview.centerYAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func centerVertically(inRelationTo: UIView, _ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        let superview = inRelationTo
        let constraint = self.centerYAnchor.constraint(equalTo: superview.centerYAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinCenterVerticallyInRelation(to anchor:NSLayoutYAxisAnchor,
                                              _ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        let constraint = self.centerYAnchor.constraint(equalTo: anchor,
                                                       constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func centerHorizontally(_ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = self.superview else {
            return nil
        }
        let constraint = self.centerXAnchor.constraint(equalTo: superview.centerXAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func centerHorizontally(inRelationTo: UIView, _ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        let superview = inRelationTo
        let constraint = self.centerXAnchor.constraint(equalTo: superview.centerXAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinCenterHorizontallyInRelation(to anchor: NSLayoutXAxisAnchor,
                                                _ constant: CGFloat = 0) -> NSLayoutConstraint? {
        let constraint = self.centerXAnchor.constraint(equalTo: anchor,
                                                       constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinLeft(_ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = self.superview else {
            return nil
        }
        let constraint = self.leftAnchor.constraint(equalTo: superview.leftAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinLeftInRelation(to anchor: NSLayoutXAxisAnchor, _ constant: CGFloat = 0) -> NSLayoutConstraint? {
        let constraint = self.leftAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinLeftGreaterThanOrEqual(to anchor: NSLayoutXAxisAnchor, _ constant: CGFloat = 0, _ priority: UILayoutPriority = .required) -> NSLayoutConstraint? {
        let constraint: NSLayoutConstraint = self.leftAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        constraint.priority = priority
        return constraint
    }
    
    @discardableResult
    public func pinRightGreaterThanOrEqual(to anchor: NSLayoutXAxisAnchor, _ constant: CGFloat = 0, _ priority: UILayoutPriority = .required) -> NSLayoutConstraint? {
        let constraint: NSLayoutConstraint = self.rightAnchor.constraint(greaterThanOrEqualTo: anchor, constant: -constant)
        constraint.isActive = true
        constraint.priority = priority
        return constraint
    }
    
    @discardableResult
    public func pinRight(_ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = self.superview else {
            return nil
        }
        let constraint = self.rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinRightInRelation(to anchor: NSLayoutXAxisAnchor, _ constant: CGFloat = 0) -> NSLayoutConstraint? {
        let constraint = self.rightAnchor.constraint(equalTo: anchor, constant: -constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinTop(_ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = self.superview else {
            return nil
        }
        let constraint = self.topAnchor.constraint(equalTo: superview.topAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinTopInRelation(to anchor: NSLayoutYAxisAnchor, _ constant: CGFloat = 0) -> NSLayoutConstraint? {
        let constraint = self.topAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinBottom(_ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = self.superview else {
            return nil
        }
        let constraint = self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinBottomInRelation(to anchor: NSLayoutYAxisAnchor, _ constant: CGFloat = 0) -> NSLayoutConstraint? {
        let constraint = self.bottomAnchor.constraint(equalTo: anchor, constant: -constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinSafeTop(_ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = self.superview else {
            return nil
        }
        let constraint = self.topAnchor.constraint(equalTo: superview.safeTopAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinSafeBottom(_ constant: CGFloat = 0.0) -> NSLayoutConstraint? {
        guard let superview = self.superview else {
            return nil
        }
        let constraint = self.bottomAnchor.constraint(equalTo: superview.safeBottomAnchor, constant: -constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func maxHeight(_ height: CGFloat) -> NSLayoutConstraint {
        let constraint = self.heightAnchor.constraint(lessThanOrEqualToConstant: height)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func maxWidth(_ width: CGFloat) -> NSLayoutConstraint {
        let constraint = self.widthAnchor.constraint(lessThanOrEqualToConstant: width)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func minHeight(_ height: CGFloat) -> NSLayoutConstraint {
        let constraint = self.heightAnchor.constraint(greaterThanOrEqualToConstant: height)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func minWidth(_ width: CGFloat) -> NSLayoutConstraint {
        let constraint = self.widthAnchor.constraint(greaterThanOrEqualToConstant: width)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func constraintHeight(_ toConstant: CGFloat) -> NSLayoutConstraint? {
        let constraint = self.heightAnchor.constraint(equalToConstant: toConstant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func constraintHeight(toAnchor: NSLayoutDimension, multiplier: CGFloat = 1) -> NSLayoutConstraint? {
        let constraint = self.heightAnchor.constraint(equalTo: toAnchor, multiplier: multiplier)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func constraintHeightLessThan(toAnchor: NSLayoutDimension, multiplier: CGFloat = 1) -> NSLayoutConstraint? {
        let constraint = self.heightAnchor.constraint(lessThanOrEqualTo: toAnchor, multiplier: multiplier)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func constraintHeightGreaterThan(toAnchor: NSLayoutDimension, constant: CGFloat = 1) -> NSLayoutConstraint? {
        let constraint = self.heightAnchor.constraint(greaterThanOrEqualTo: toAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func constraintWidth(_ toConstant: CGFloat) -> NSLayoutConstraint? {
        let constraint = self.widthAnchor.constraint(equalToConstant: toConstant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func constraintWidth(toAnchor: NSLayoutDimension, constant: CGFloat) -> NSLayoutConstraint? {
        let constraint = self.widthAnchor.constraint(equalTo: toAnchor, constant: constant)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func constraintWidth(toAnchor: NSLayoutDimension, multiplier: CGFloat = 1) -> NSLayoutConstraint? {
        let constraint = self.widthAnchor.constraint(equalTo: toAnchor, multiplier: multiplier)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func constraintWidthLessThan(toAnchor: NSLayoutDimension, multiplier: CGFloat = 1) -> NSLayoutConstraint? {
        let constraint = self.widthAnchor.constraint(lessThanOrEqualTo: toAnchor, multiplier: multiplier)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func squareViewConstraint() -> NSLayoutConstraint? {
        let constraint = self.widthAnchor.constraint(equalTo: self.heightAnchor)
        constraint.isActive = true
        return constraint
    }
    
    public func roundView(_ radius: CGFloat? = nil) {
        self.layer.cornerRadius = radius ?? self.frame.height / 2.0
        self.clipsToBounds = true
    }
    
    @discardableResult
    public func height(with size: CGFloat) -> NSLayoutConstraint? {
        let constraint = self.heightAnchor.constraint(equalToConstant: size)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func width(with size: CGFloat) -> NSLayoutConstraint? {
        let constraint = self.widthAnchor.constraint(equalToConstant: size)
        constraint.isActive = true
        return constraint
    }
    
    public var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.topAnchor
        } else {
            return self.topAnchor
        }
    }
    
    public var safeLeftAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.leftAnchor
        } else {
            return self.leftAnchor
        }
    }
    
    public var safeRightAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.rightAnchor
        } else {
            return self.rightAnchor
        }
    }
    
    public var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.bottomAnchor
        } else {
            return self.bottomAnchor
        }
    }
    
    public func removeAllConstraints() {
        for subview in self.subviews {
            subview.removeAllConstraints()
        }
        self.removeConstraints(self.constraints)
    }
    
    public func getLeftConstraint() -> NSLayoutConstraint {
        
        guard let leftConstraint = self.superview?
            .constraints
            .filter({ $0.firstAttribute == .left && $0.firstItem as? UIView == self }).first else {
            return NSLayoutConstraint()
        }
        
        return leftConstraint
    }
    
    public func getRightConstraint() -> NSLayoutConstraint {
        
        guard let rightConstraint = self.superview?
            .constraints
            .filter({ $0.firstAttribute == .right && $0.firstItem as? UIView == self }).first else {
            return NSLayoutConstraint()
        }
        
        return rightConstraint
    }
    
    public func getLeadingConstant() -> NSLayoutConstraint {
        
        guard let leadingConstraint = self.superview?
            .constraints
            .filter({ $0.firstAttribute == .leading && $0.firstItem as? UIView == self }).first else {
            return NSLayoutConstraint()
        }
        
        return leadingConstraint
    }
    
    public func getTrailingConstant() -> NSLayoutConstraint {
        
        guard let trailingConstraint = self.superview?
            .constraints
            .filter({ $0.firstAttribute == .trailing && $0.firstItem as? UIView == self }).first else {
            return NSLayoutConstraint()
        }
        
        return trailingConstraint
    }
    
    public func getBottomConstraint() -> NSLayoutConstraint {
        
        guard let trailingConstraint = self.superview?
            .constraints
            .filter({ $0.firstAttribute == .bottom && $0.firstItem as? UIView == self }).first else {
            return NSLayoutConstraint()
        }
        
        return trailingConstraint
    }
    
    public func getCenterVerticallyConstraint() -> NSLayoutConstraint {
        
        guard let centerVerticallyConstraint = self.superview?
            .constraints
            .filter({ $0.firstAttribute == .centerY && $0.firstItem as? UIView == self }).first else {
            return NSLayoutConstraint()
        }
        
        return centerVerticallyConstraint
    }
    
    public func getCenterHorizontalyConstraint() -> NSLayoutConstraint {
        
        guard let centerHorizontallyConstraint = self.superview?
            .constraints
            .filter({ $0.firstAttribute == .centerX && $0.firstItem as? UIView == self }).first else {
            return NSLayoutConstraint()
        }
        
        return centerHorizontallyConstraint
    }
    
    func removeAllSubviews() {
        self.subviews.forEach { view in
            view.removeFromSuperview()
        }
    }
    
}

