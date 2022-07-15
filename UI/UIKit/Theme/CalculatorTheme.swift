//
//  CalculatorTheme.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-15.
//

import UIKit

public struct CalculatorTheme {
    public init(
        backgroundColor: String,
        displayColor: String,
        extraFunctionColor: String,
        extraFunctionTitleColor: String,
        operationColor: String,
        operationTitleColor: String,
        pinpadColor: String,
        pinpadTitleColor: String
    ) {
        self.backgroundColor = backgroundColor
        self.displayColor = displayColor
        self.extraFunctionColor = extraFunctionColor
        self.extraFunctionTitleColor = extraFunctionTitleColor
        self.operationColor = operationColor
        self.operationTitleColor = operationTitleColor
        self.pinpadColor = pinpadColor
        self.pinpadTitleColor = pinpadTitleColor
    }
    
    let backgroundColor: String
    let displayColor: String
    let extraFunctionColor: String
    let extraFunctionTitleColor: String
    let operationColor: String
    let operationTitleColor: String
    let pinpadColor: String
    let pinpadTitleColor: String
}
