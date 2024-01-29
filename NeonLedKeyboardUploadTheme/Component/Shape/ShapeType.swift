//
//  ShapeType.swift
//  LogoMaker
//
//  Created by duongnk@maxmobile-software.com on 29/06/2023.
//

import SwiftUI

public enum ShapeType: String,CaseIterable,Codable {
    case SQUARE, SEMICIRCLE, TRIANGLE, HEXAGON, STAR_6,
         TRAPEZIUM, RHOMBUS, OCTAGON, ROUNDED_TRIANGLE,
         ROUNDEDSQUARE, ROUNDEDHEXAGON, ROUNDEDSTAR_6
    case ROUNDEDOCTAGON, ENNEGON, ROUNDED_PENTAGON,
         ROUNDED_STAR5, ROUNDEDOCTAGON_1, ASTERISK,
         ROUNDED_RHOMBUS, ROUNDED_OVAL, OVAL, ENEGON_1
    case SEMICIRCLE_BOTTOM, SEMICIRCLE_TOP, STAR, PENTAGON, STAR_8, CIRCLESHAPE
    case CIRCLE
    
    var toShape: some Shape {
        switch self {
        case .SEMICIRCLE:
            return MyAnyShape(SemiCircle())
        case .TRIANGLE:
            return MyAnyShape(Triangle())
        case .SQUARE:
            return MyAnyShape(Rectangle())
        case .HEXAGON:
            return MyAnyShape(Hexagon())
        case .STAR_6:
            return MyAnyShape(Star_6())
        case .TRAPEZIUM:
            return MyAnyShape(TrapeZium())
        case .RHOMBUS:
            return MyAnyShape(Rhombus())
        case .OCTAGON:
            return MyAnyShape(Octagon())
        case .ROUNDED_TRIANGLE:
            return MyAnyShape(Rounded_Triangle())
        case .ROUNDEDSQUARE:
            return MyAnyShape(RoundedSquare())
        case .ROUNDEDHEXAGON:
            return MyAnyShape(RounedHexagon())
        case .ROUNDEDSTAR_6:
            return MyAnyShape(RoundedStar_6())
        case .ROUNDEDOCTAGON:
            return MyAnyShape(RoundedOctagon())
        case .ENNEGON:
            return MyAnyShape(Ennegon())
        case .ROUNDED_PENTAGON:
            return MyAnyShape(Rounded_Pentagon())
        case .ROUNDED_STAR5:
            return MyAnyShape(Rounded_Star5())
        case .ROUNDEDOCTAGON_1:
            return MyAnyShape(RoundedOctagon_1())
        case .ASTERISK:
            return MyAnyShape(Asterisk())
        case .ROUNDED_RHOMBUS:
            return MyAnyShape(Rounded_Rhombus())
        case .ROUNDED_OVAL:
            return MyAnyShape(Rounded_Oval())
        case .OVAL:
            return MyAnyShape(Oval())
        case .ENEGON_1:
            return MyAnyShape(Enegon_1())
        case .SEMICIRCLE_BOTTOM:
            return MyAnyShape(SemiCircle_Bottom())
        case .SEMICIRCLE_TOP:
            return MyAnyShape(SemiCircle_Top())
        case .STAR:
            return MyAnyShape(Star())
        case .PENTAGON:
            return MyAnyShape(Pentagon())
        case .STAR_8:
            return MyAnyShape(Star_8())
        case .CIRCLESHAPE:
            return MyAnyShape(CircleShape())
        case .CIRCLE:
            return MyAnyShape(Circle())
        }
    }
    
    var getShapeType: any Shape {
        switch self {
        case .SEMICIRCLE:
            return SemiCircle()
        case .TRIANGLE:
            return Triangle()
        case .SQUARE:
            return Rectangle()
        case .HEXAGON:
            return Hexagon()
        case .STAR_6:
            return Star_6()
        case .TRAPEZIUM:
            return TrapeZium()
        case .RHOMBUS:
            return Rhombus()
        case .OCTAGON:
            return Octagon()
        case .ROUNDED_TRIANGLE:
            return Rounded_Triangle()
        case .ROUNDEDSQUARE:
            return RoundedSquare()
        case .ROUNDEDHEXAGON:
            return RounedHexagon()
        case .ROUNDEDSTAR_6:
            return RoundedStar_6()
        case .ROUNDEDOCTAGON:
            return RoundedOctagon()
        case .ENNEGON:
            return Ennegon()
        case .ROUNDED_PENTAGON:
            return Rounded_Pentagon()
        case .ROUNDED_STAR5:
            return Rounded_Star5()
        case .ROUNDEDOCTAGON_1:
            return RoundedOctagon_1()
        case .ASTERISK:
            return Asterisk()
        case .ROUNDED_RHOMBUS:
            return Rounded_Rhombus()
        case .ROUNDED_OVAL:
            return Rounded_Oval()
        case .OVAL:
            return Oval()
        case .ENEGON_1:
            return Enegon_1()
        case .SEMICIRCLE_BOTTOM:
            return SemiCircle_Bottom()
        case .SEMICIRCLE_TOP:
            return SemiCircle_Top()
        case .STAR:
            return Star()
        case .PENTAGON:
            return Pentagon()
        case .STAR_8:
            return Star_8()
        case .CIRCLESHAPE:
            return CircleShape()
        case .CIRCLE:
            return Circle()
        }
    }
}
