//
//  LoadingActivity.swift
//  Tik-Tok-Clone
//
//  Created by Connor Black on 20/02/2022.
//

import SwiftUI

struct LoadingActivity: View {
    static let initialLeftOffset: Double = -((20 / 2) + 2)
    static let initialRightOffset: Double = (20 / 2) + 2
    
    static let initialLeftScale: Double = 1.0
    static let initialRightScale: Double = 1.0
    
    static let initialLeftZ: Double = 2.0
    static let initialRightZ: Double = 1.0
    
    static let initialLeftDotIsLeft: Bool = true
    static let initialRightDotIsLeft: Bool = false
    
    static let initialLeftInnerDotOffset: Double = 20
    static let initialRightInnerDotOffset: Double = -20
    
    static let initialLeftInnerScale: Double = 1.0
    static let initialRightInnerScale: Double = 1.0
    
    static let outerDotSize: Double = 20
    static let innerDotSize: Double = 20
    
    static let animationDuration: TimeInterval = 0.5
    
    @State var leftCircleXOffset: Double = initialLeftOffset
    @State var leftDotScale: Double = initialLeftScale
    @State var leftDotZAxis: Double = initialLeftZ
    @State var leftDotIsLeft: Bool = initialLeftDotIsLeft
    @State var leftInnerDotXOffset: Double = initialLeftInnerDotOffset
    @State var leftInnerDotScale: Double = initialLeftInnerScale
    
    @State var rightCircleXOffset: Double = initialRightOffset
    @State var rightDotScale: Double = initialRightScale
    @State var rightDotZAxis: Double = initialRightZ
    @State var rightDotIsLeft: Bool = initialRightDotIsLeft
    @State var rightInnerDotXOffset: Double = initialRightInnerDotOffset
    @State var rightInnerDotScale: Double = initialRightInnerScale
    
    let timer = Timer.publish(every: animationDuration + 0.2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            ZStack {
                ZStack {
                    Circle().fill(Color.pink)
                    
                    Circle().fill(Color.black)
                        .frame(width: LoadingActivity.innerDotSize,
                               height: LoadingActivity.innerDotSize)
                        .offset(x: leftInnerDotXOffset)
                        .scaleEffect(leftInnerDotScale)
                }
                .clipped()
                .frame(width: LoadingActivity.outerDotSize,
                       height: LoadingActivity.outerDotSize)
                .offset(x: leftCircleXOffset)
                .scaleEffect(leftDotScale)
                .zIndex(leftDotZAxis)
                
                ZStack {
                    Circle().fill(Color.teal)
                    
                    Circle().fill(Color.black)
                        .frame(width: LoadingActivity.innerDotSize,
                               height: LoadingActivity.innerDotSize)
                        .offset(x: rightInnerDotXOffset)
                        .scaleEffect(rightInnerDotScale)
                }
                .clipped()
                .frame(width: LoadingActivity.outerDotSize,
                       height: LoadingActivity.outerDotSize)
                .offset(x: rightCircleXOffset)
                .scaleEffect(rightDotScale)
                .zIndex(rightDotZAxis)
                
            }
            
//            HStack {
//                Button {
//
//                } label: {
//                    Text("Animate")
//                }
//
//                Button {
//                    resetValues()
//                } label: {
//                    Text("Reset")
//                }
//            }
            
        }
        .onReceive(timer) { input in
            animate(offset: $leftCircleXOffset,
                    scale: $leftDotScale,
                    zAxis: $leftDotZAxis,
                    isLeft: $leftDotIsLeft,
                    innerDotOffset: $leftInnerDotXOffset,
                    innerDotScale: $leftInnerDotScale,
                    direction: leftDotIsLeft ? .leftToRight : .rightToLeft)
            
            animate(offset: $rightCircleXOffset,
                    scale: $rightDotScale,
                    zAxis: $rightDotZAxis,
                    isLeft: $rightDotIsLeft,
                    innerDotOffset: $rightInnerDotXOffset,
                    innerDotScale: $rightInnerDotScale,
                    direction: rightDotIsLeft ? .leftToRight : .rightToLeft)
        }
    }
    
    enum Direction {
        case leftToRight
        case rightToLeft
    }
    
    func resetValues() {
        leftCircleXOffset = LoadingActivity.initialLeftOffset
        leftDotScale = LoadingActivity.initialLeftScale
        leftDotZAxis = LoadingActivity.initialLeftZ
        leftDotIsLeft = LoadingActivity.initialLeftDotIsLeft
        leftInnerDotXOffset = LoadingActivity.initialLeftInnerDotOffset
        leftInnerDotScale = LoadingActivity.initialLeftInnerScale
        
        rightCircleXOffset = LoadingActivity.initialRightOffset
        rightDotScale = LoadingActivity.initialRightScale
        rightDotZAxis = LoadingActivity.initialRightZ
        rightDotIsLeft = LoadingActivity.initialRightDotIsLeft
        rightInnerDotXOffset = LoadingActivity.initialRightInnerDotOffset
        rightInnerDotScale = LoadingActivity.initialRightInnerScale
    }
    
    func animate(offset: Binding<Double>,
                 scale: Binding<Double>,
                 zAxis: Binding<Double>,
                 isLeft: Binding<Bool>,
                 innerDotOffset: Binding<Double>,
                 innerDotScale: Binding<Double>,
                 direction: Direction) {
        
        switch direction {
        case .leftToRight:
            zAxis.wrappedValue = LoadingActivity.initialLeftZ
            
            isLeft.wrappedValue = LoadingActivity.initialRightDotIsLeft
            
            withAnimation(Animation.linear(duration: LoadingActivity.animationDuration)) {
                offset.wrappedValue = LoadingActivity.initialRightOffset
            }
            
            withAnimation(Animation.linear(duration: LoadingActivity.animationDuration / 2)) {
                scale.wrappedValue = 1.2
                innerDotScale.wrappedValue = 0.8
            }
            
            withAnimation(Animation.linear(duration: LoadingActivity.animationDuration / 2).delay(LoadingActivity.animationDuration / 2)) {
                scale.wrappedValue = LoadingActivity.initialRightScale
                innerDotScale.wrappedValue = LoadingActivity.initialRightInnerScale
            }
            
            withAnimation(Animation.linear(duration: LoadingActivity.animationDuration)) {
                innerDotOffset.wrappedValue = LoadingActivity.initialRightInnerDotOffset
            }
        case .rightToLeft:
            zAxis.wrappedValue = LoadingActivity.initialRightZ
            
            isLeft.wrappedValue = LoadingActivity.initialLeftDotIsLeft
            
            innerDotOffset.wrappedValue = LoadingActivity.initialLeftInnerDotOffset
            
            withAnimation(Animation.linear(duration: LoadingActivity.animationDuration)) {
                offset.wrappedValue = LoadingActivity.initialLeftOffset
            }
            
            withAnimation(Animation.linear(duration: LoadingActivity.animationDuration / 2)) {
                scale.wrappedValue = 0.8
            }
            
            withAnimation(Animation.linear(duration: LoadingActivity.animationDuration / 2).delay(LoadingActivity.animationDuration / 2)) {
                scale.wrappedValue = LoadingActivity.initialLeftScale
            }
        }
        
    }
}

struct LoadingActivity_Previews: PreviewProvider {
    static var previews: some View {
        LoadingActivity()
    }
}
