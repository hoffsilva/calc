//
//  HomeView.swift
//  UI
//
//  Created by Hoff Silva on 2022-07-12.
//

import UIKit

public final class HomeView: UIView {
    
    private let theme: CalculatorTheme
    
    private lazy var buttonSize: CGSize = {
        CGSize(width: 78, height: 78)
    }()
    
    private lazy var verticalContentStackView: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.vertical)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var LCDDisplayView: UIView = {
        UIViewBuilderImp()
            .prepareForConstraints()
            .withBackgroundColor(.clear)
            .build()
    }()
    
    private lazy var LCDDisplayLabel: UILabel = {
        UILabelBuilderImp()
            .prepareForConstraints()
            .withAlignment(.right)
            .withText("0")
            .withFont(.systemFont(ofSize: 100))
            .withColor(UIColor.fromHexadecimal(hex: theme.displayColor))
            .build()
    }()
    
    private lazy var horizontalStackViewLineOne: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var extraButtonAC: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("AC", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.extraFunctionColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.extraFunctionTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var extraButtonPlusMinus: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("⁺∕₋", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.extraFunctionColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.extraFunctionTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var extraButtonPercent: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("%", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.extraFunctionColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.extraFunctionTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var operationButtonDivision: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("÷", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.operationColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.operationTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var horizontalStackViewLineTwo: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var pinpadButtonSeven: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("7", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var pinpadButtonEight: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("8", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var pinpadButtonNine: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("9", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var operationButtonMultiply: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("*", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.operationColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.operationTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var horizontalStackViewLineThree: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var pinpadButtonFour: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("4", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var pinpadButtonFive: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("5", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var pinpadButtonSix: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("6", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var operationButtonMinus: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("-", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.operationColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.operationTitleColor), state: .normal)
            .build()
    }()
    
    
    private lazy var horizontalStackViewLineFour: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var pindpadButtonOne: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("1", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var pinpadButtonTwo: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("2", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var pindpadButtonThree: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("3", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var operationButtonPlus: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("+", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.operationColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.operationTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var horizontalStackViewLineFive: UIStackView = {
        UIStackViewBuilderImp()
            .prepareForConstraints()
            .withAlignment(.fill)
            .withOrientation(.horizontal)
            .withDistribution(.fill)
            .withSpacing(10)
            .build()
    }()
    
    private lazy var pinpadButtonZero: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("0", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var pinpadButtonDot: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle(".", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.pinpadColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.pinpadTitleColor), state: .normal)
            .build()
    }()
    
    private lazy var operationButtonEqual: UIButton = {
        UIButtonBuilderImp()
            .prepareForConstraints()
            .withTitle("=", state: .normal)
            .withBackgroundColor(.clear)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .withTintColor(UIColor.fromHexadecimal(hex: theme.operationColor))
            .withTitleColor(UIColor.fromHexadecimal(hex: theme.operationTitleColor), state: .normal)
            .withBackgroundImage(UIImage(named: "Circle"), state: .normal)
            .build()
    }()
    
    // MARK: - Initialization
    
    public init(theme: CalculatorTheme) {
        self.theme = theme
        super.init(frame: .zero)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: UIViewCodable {
    
    public func setupViewsHierarchy() {
        addSubview(verticalContentStackView)
        verticalContentStackView.addArrangedSubview(LCDDisplayView)
        LCDDisplayView.addSubview(LCDDisplayLabel)
        setupHorizontalStackViewLineOneViewsHierarchy()
        setupHorizontalStackViewLineTwoViewsHierarchy()
        setupHorizontalStackViewLineThreeViewsHierarchy()
        setupHorizontalStackViewLineFourViewsHierarchy()
        setupHorizontalStackViewLineFiveViewsHierarchy()
    }
    
    public func setupConstraints() {
        verticalContentStackView.pinSafeBottom()
        verticalContentStackView.centerHorizontally()
        verticalContentStackView.constraintWidth(toAnchor: self.widthAnchor)
        
        setupConstraintsButtonsLineOne()
        setupConstraintsButtonsLineTwo()
        setupConstraintsButtonsLineThree()
        setupConstraintsButtonsLineFour()
        setupConstraintsButtonsLineFive()
        
        LCDDisplayLabel.pinTop()
        LCDDisplayLabel.pinRight(10)
        LCDDisplayLabel.pinBottom()
        LCDDisplayLabel.pinLeft(10)
    }
    
    public func additionalConfiguration() {
        self.backgroundColor = UIColor.fromHexadecimal(hex: theme.backgroundColor)
    }
    
    private func setupHorizontalStackViewLineOneViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineOne)
        horizontalStackViewLineOne.addArrangedSubview(extraButtonAC)
        horizontalStackViewLineOne.addArrangedSubview(extraButtonPlusMinus)
        horizontalStackViewLineOne.addArrangedSubview(extraButtonPercent)
        horizontalStackViewLineOne.addArrangedSubview(operationButtonDivision)
    }
    
    private func setupHorizontalStackViewLineTwoViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineTwo)
        horizontalStackViewLineTwo.addArrangedSubview(pinpadButtonSeven)
        horizontalStackViewLineTwo.addArrangedSubview(pinpadButtonEight)
        horizontalStackViewLineTwo.addArrangedSubview(pinpadButtonNine)
        horizontalStackViewLineTwo.addArrangedSubview(operationButtonMultiply)
    }
    
    private func setupHorizontalStackViewLineThreeViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineThree)
        horizontalStackViewLineThree.addArrangedSubview(pinpadButtonFour)
        horizontalStackViewLineThree.addArrangedSubview(pinpadButtonFive)
        horizontalStackViewLineThree.addArrangedSubview(pinpadButtonSix)
        horizontalStackViewLineThree.addArrangedSubview(operationButtonMinus)
    }
    
    private func setupHorizontalStackViewLineFourViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineFour)
        horizontalStackViewLineFour.addArrangedSubview(pindpadButtonOne)
        horizontalStackViewLineFour.addArrangedSubview(pinpadButtonTwo)
        horizontalStackViewLineFour.addArrangedSubview(pindpadButtonThree)
        horizontalStackViewLineFour.addArrangedSubview(operationButtonPlus)
    }
    
    private func setupHorizontalStackViewLineFiveViewsHierarchy() {
        verticalContentStackView.addArrangedSubview(horizontalStackViewLineFive)
        horizontalStackViewLineFive.addArrangedSubview(pinpadButtonZero)
        horizontalStackViewLineFive.addArrangedSubview(pinpadButtonDot)
        horizontalStackViewLineFive.addArrangedSubview(operationButtonEqual)
    }
    
    private func setupConstraintsButtonsLineOne() {
        extraButtonAC.constraintWidth(toAnchor: extraButtonAC.heightAnchor, multiplier: 1)
        extraButtonPlusMinus.constraintWidth(toAnchor: extraButtonPlusMinus.heightAnchor, multiplier: 1)
        extraButtonPercent.constraintWidth(toAnchor: extraButtonPercent.heightAnchor, multiplier: 1)
        operationButtonDivision.constraintWidth(toAnchor: operationButtonDivision.heightAnchor, multiplier: 1)
    }
    
    private func setupConstraintsButtonsLineTwo() {
        pinpadButtonSeven.constraintWidth(toAnchor: pinpadButtonSeven.heightAnchor, multiplier: 1)
        pinpadButtonEight.constraintWidth(toAnchor: pinpadButtonEight.heightAnchor, multiplier: 1)
        pinpadButtonNine.constraintWidth(toAnchor: pinpadButtonNine.heightAnchor, multiplier: 1)
        operationButtonMultiply.constraintWidth(toAnchor: operationButtonMultiply.heightAnchor, multiplier: 1)
    }
    
    private func setupConstraintsButtonsLineThree() {
        pinpadButtonFour.constraintWidth(toAnchor: pinpadButtonFour.heightAnchor, multiplier: 1)
        pinpadButtonFive.constraintWidth(toAnchor: pinpadButtonFive.heightAnchor, multiplier: 1)
        pinpadButtonSix.constraintWidth(toAnchor: pinpadButtonSix.heightAnchor, multiplier: 1)
        operationButtonMinus.constraintWidth(toAnchor: operationButtonMinus.heightAnchor, multiplier: 1)
    }
    
    private func setupConstraintsButtonsLineFour() {
        pindpadButtonOne.constraintWidth(toAnchor: pindpadButtonOne.heightAnchor, multiplier: 1)
        pinpadButtonTwo.constraintWidth(toAnchor: pinpadButtonTwo.heightAnchor, multiplier: 1)
        pindpadButtonThree.constraintWidth(toAnchor: pindpadButtonThree.heightAnchor, multiplier: 1)
        operationButtonPlus.constraintWidth(toAnchor: operationButtonPlus.heightAnchor, multiplier: 1)
    }
    
    private func setupConstraintsButtonsLineFive() {
        pinpadButtonZero.constraintWidth(toAnchor: pinpadButtonZero.heightAnchor, multiplier: 2.1)
        pinpadButtonDot.constraintWidth(toAnchor: pinpadButtonDot.heightAnchor, multiplier: 1)
        operationButtonEqual.constraintWidth(toAnchor: operationButtonEqual.heightAnchor, multiplier: 1)
    }
    
}
