//
//  UIViewCodable.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import Foundation

public protocol UIViewCodable {
    func setupViewsHierarchy()
    func setupConstraints()
    func configureView()
    func additionalConfiguration()
}

public extension UIViewCodable {
    
    func configureView() {
        self.setupViewsHierarchy()
        self.setupConstraints()
        self.additionalConfiguration()
    }
    
    func additionalConfiguration() {}
    
}
