//
//  Shapes.swift
//  LogoMaker
//
//  Created by duongnk@maxmobile-software.com on 29/06/2023.
//

import SwiftUI

struct SemiCircle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.86204*width, y: 0.10493*height))
        path.addCurve(to: CGPoint(x: 0.30737*width, y: 0.10493*height), control1: CGPoint(x: 0.70362*width, y: -0.03498*height), control2: CGPoint(x: 0.46579*width, y: -0.03498*height))
        path.addCurve(to: CGPoint(x: 0.27068*width, y: 0.69629*height), control1: CGPoint(x: 0.13394*width, y: 0.2581*height), control2: CGPoint(x: 0.11752*width, y: 0.52286*height))
        path.addLine(to: CGPoint(x: 0.86204*width, y: 0.10493*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.13796*width, y: 0.89325*height))
        path.addCurve(to: CGPoint(x: 0.41711*width, y: height), control1: CGPoint(x: 0.21453*width, y: 0.96225*height), control2: CGPoint(x: 0.31403*width, y: 1.0003*height))
        path.addCurve(to: CGPoint(x: 0.71326*width, y: 0.87767*height), control1: CGPoint(x: 0.52816*width, y: 1.00023*height), control2: CGPoint(x: 0.63474*width, y: 0.9562*height))
        path.addCurve(to: CGPoint(x: 0.72884*width, y: 0.30378*height), control1: CGPoint(x: 0.86906*width, y: 0.72045*height), control2: CGPoint(x: 0.87589*width, y: 0.46922*height))
        path.addLine(to: CGPoint(x: 0.13796*width, y: 0.89325*height))
        path.closeSubpath()
        return path
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99392*width, y: 0.89895*height))
        path.addLine(to: CGPoint(x: 0.51655*width, y: 0.07439*height))
        path.addCurve(to: CGPoint(x: 0.51088*width, y: 0.06872*height), control1: CGPoint(x: 0.51502*width, y: 0.07218*height), control2: CGPoint(x: 0.5131*width, y: 0.07025*height))
        path.addCurve(to: CGPoint(x: 0.4801*width, y: 0.07439*height), control1: CGPoint(x: 0.50081*width, y: 0.06179*height), control2: CGPoint(x: 0.48703*width, y: 0.06433*height))
        path.addLine(to: CGPoint(x: 0.00273*width, y: 0.90329*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.91339*height), control1: CGPoint(x: 0.00099*width, y: 0.90638*height), control2: CGPoint(x: 0.00005*width, y: 0.90985*height))
        path.addCurve(to: CGPoint(x: 0.02095*width, y: 0.93496*height), control1: CGPoint(x: -0.00017*width, y: 0.92514*height), control2: CGPoint(x: 0.00921*width, y: 0.93479*height))
        path.addLine(to: CGPoint(x: 0.97569*width, y: 0.93496*height))
        path.addCurve(to: CGPoint(x: 0.97852*width, y: 0.93518*height), control1: CGPoint(x: 0.97663*width, y: 0.9351*height), control2: CGPoint(x: 0.97757*width, y: 0.93517*height))
        path.addCurve(to: CGPoint(x: width, y: 0.91413*height), control1: CGPoint(x: 0.99026*width, y: 0.9353*height), control2: CGPoint(x: 0.99988*width, y: 0.92588*height))
        path.addCurve(to: CGPoint(x: 0.99392*width, y: 0.89895*height), control1: CGPoint(x: 1.00003*width, y: 0.90847*height), control2: CGPoint(x: 0.99785*width, y: 0.90302*height))
        path.closeSubpath()
        return path
    }
}

struct Square: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.97902*width, y: 0))
        path.addLine(to: CGPoint(x: 0.02098*width, y: 0))
        path.addCurve(to: CGPoint(x: 0, y: 0.02098*height), control1: CGPoint(x: 0.00939*width, y: 0), control2: CGPoint(x: 0, y: 0.0094*height))
        path.addLine(to: CGPoint(x: 0, y: 0.97902*height))
        path.addCurve(to: CGPoint(x: 0.02098*width, y: height), control1: CGPoint(x: 0, y: 0.99061*height), control2: CGPoint(x: 0.00939*width, y: height))
        path.addLine(to: CGPoint(x: 0.97902*width, y: height))
        path.addCurve(to: CGPoint(x: 0.99999*width, y: 0.97902*height), control1: CGPoint(x: 0.9906*width, y: height), control2: CGPoint(x: 0.99999*width, y: 0.99061*height))
        path.addLine(to: CGPoint(x: 0.99999*width, y: 0.02098*height))
        path.addCurve(to: CGPoint(x: 0.99999*width, y: 0.02012*height), control1: CGPoint(x: width, y: 0.02069*height), control2: CGPoint(x: width, y: 0.0204*height))
        path.addCurve(to: CGPoint(x: 0.97902*width, y: 0), control1: CGPoint(x: 0.99976*width, y: 0.00877*height), control2: CGPoint(x: 0.99036*width, y: -0.00023*height))
        path.closeSubpath()
        return path
    }
}

struct Hexagon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99719*width, y: 0.48867*height))
        path.addLine(to: CGPoint(x: 0.75727*width, y: 0.07298*height))
        path.addCurve(to: CGPoint(x: 0.74059*width, y: 0.06271*height), control1: CGPoint(x: 0.75387*width, y: 0.0669*height), control2: CGPoint(x: 0.74756*width, y: 0.06301*height))
        path.addLine(to: CGPoint(x: 0.26204*width, y: 0.06271*height))
        path.addCurve(to: CGPoint(x: 0.24408*width, y: 0.07298*height), control1: CGPoint(x: 0.25464*width, y: 0.06265*height), control2: CGPoint(x: 0.24778*width, y: 0.06657*height))
        path.addLine(to: CGPoint(x: 0.00287*width, y: 0.48995*height))
        path.addCurve(to: CGPoint(x: 0.00287*width, y: 0.5109*height), control1: CGPoint(x: -0.00096*width, y: 0.49641*height), control2: CGPoint(x: -0.00096*width, y: 0.50445*height))
        path.addLine(to: CGPoint(x: 0.24408*width, y: 0.9283*height))
        path.addCurve(to: CGPoint(x: 0.26076*width, y: 0.93728*height), control1: CGPoint(x: 0.24789*width, y: 0.93378*height), control2: CGPoint(x: 0.25408*width, y: 0.93712*height))
        path.addLine(to: CGPoint(x: 0.74059*width, y: 0.93728*height))
        path.addCurve(to: CGPoint(x: 0.75727*width, y: 0.9283*height), control1: CGPoint(x: 0.74729*width, y: 0.93719*height), control2: CGPoint(x: 0.75351*width, y: 0.93384*height))
        path.addLine(to: CGPoint(x: 0.99719*width, y: 0.50962*height))
        path.addCurve(to: CGPoint(x: 0.99719*width, y: 0.48867*height), control1: CGPoint(x: 1.00094*width, y: 0.50314*height), control2: CGPoint(x: 1.00094*width, y: 0.49515*height))
        path.closeSubpath()
        return path
    }
}

struct Star_6: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.93422*width, y: 0.24992*height))
        path.addCurve(to: CGPoint(x: 0.91397*width, y: 0.23915*height), control1: CGPoint(x: 0.93026*width, y: 0.24257*height), control2: CGPoint(x: 0.92228*width, y: 0.23833*height))
        path.addLine(to: CGPoint(x: 0.63436*width, y: 0.26974*height))
        path.addLine(to: CGPoint(x: 0.52062*width, y: 0.01124*height))
        path.addCurve(to: CGPoint(x: 0.51218*width, y: 0.00281*height), control1: CGPoint(x: 0.51864*width, y: 0.0077*height), control2: CGPoint(x: 0.51572*width, y: 0.00478*height))
        path.addCurve(to: CGPoint(x: 0.48228*width, y: 0.01124*height), control1: CGPoint(x: 0.5016*width, y: -0.00312*height), control2: CGPoint(x: 0.48821*width, y: 0.00065*height))
        path.addLine(to: CGPoint(x: 0.36897*width, y: 0.26974*height))
        path.addLine(to: CGPoint(x: 0.08893*width, y: 0.23915*height))
        path.addCurve(to: CGPoint(x: 0.06825*width, y: 0.24992*height), control1: CGPoint(x: 0.0805*width, y: 0.23827*height), control2: CGPoint(x: 0.07236*width, y: 0.24251*height))
        path.addCurve(to: CGPoint(x: 0.06825*width, y: 0.27232*height), control1: CGPoint(x: 0.06374*width, y: 0.25671*height), control2: CGPoint(x: 0.06374*width, y: 0.26554*height))
        path.addLine(to: CGPoint(x: 0.23326*width, y: 0.50024*height))
        path.addLine(to: CGPoint(x: 0.06566*width, y: 0.72513*height))
        path.addCurve(to: CGPoint(x: 0.06566*width, y: 0.74796*height), control1: CGPoint(x: 0.06119*width, y: 0.73208*height), control2: CGPoint(x: 0.06119*width, y: 0.74101*height))
        path.addCurve(to: CGPoint(x: 0.08634*width, y: 0.75873*height), control1: CGPoint(x: 0.06985*width, y: 0.7553*height), control2: CGPoint(x: 0.07794*width, y: 0.75951*height))
        path.addLine(to: CGPoint(x: 0.36639*width, y: 0.72901*height))
        path.addLine(to: CGPoint(x: 0.47969*width, y: 0.98751*height))
        path.addCurve(to: CGPoint(x: 0.49908*width, y: height), control1: CGPoint(x: 0.48311*width, y: 0.99515*height), control2: CGPoint(x: 0.49072*width, y: 1.00004*height))
        path.addCurve(to: CGPoint(x: 0.51631*width, y: 0.98837*height), control1: CGPoint(x: 0.50647*width, y: 0.99942*height), control2: CGPoint(x: 0.51301*width, y: 0.995*height))
        path.addLine(to: CGPoint(x: 0.63005*width, y: 0.72987*height))
        path.addLine(to: CGPoint(x: 0.90966*width, y: 0.76046*height))
        path.addCurve(to: CGPoint(x: 0.92991*width, y: 0.74969*height), control1: CGPoint(x: 0.91794*width, y: 0.76117*height), control2: CGPoint(x: 0.92587*width, y: 0.75695*height))
        path.addCurve(to: CGPoint(x: 0.92991*width, y: 0.72685*height), control1: CGPoint(x: 0.93461*width, y: 0.7428*height), control2: CGPoint(x: 0.93461*width, y: 0.73374*height))
        path.addLine(to: CGPoint(x: 0.76447*width, y: 0.50024*height))
        path.addLine(to: CGPoint(x: 0.93422*width, y: 0.27233*height))
        path.addCurve(to: CGPoint(x: 0.93422*width, y: 0.24992*height), control1: CGPoint(x: 0.93884*width, y: 0.26558*height), control2: CGPoint(x: 0.93884*width, y: 0.25668*height))
        path.closeSubpath()
        return path
    }
}

struct TrapeZium: Shape {
    func path(in rect: CGRect) -> Path {
         var path = Path()
         let width = rect.size.width
         let height = rect.size.height
         path.move(to: CGPoint(x: 0.99561*width, y: 0.75666*height))
         path.addLine(to: CGPoint(x: 0.78857*width, y: 0.2228*height))
         path.addCurve(to: CGPoint(x: 0.76889*width, y: 0.20911*height), control1: CGPoint(x: 0.78552*width, y: 0.21457*height), control2: CGPoint(x: 0.77767*width, y: 0.20911*height))
         path.addLine(to: CGPoint(x: 0.22947*width, y: 0.20911*height))
         path.addCurve(to: CGPoint(x: 0.21022*width, y: 0.2228*height), control1: CGPoint(x: 0.22081*width, y: 0.20916*height), control2: CGPoint(x: 0.21311*width, y: 0.21464*height))
         path.addLine(to: CGPoint(x: 0.00147*width, y: 0.76222*height))
         path.addCurve(to: CGPoint(x: 0.00361*width, y: 0.78147*height), control1: CGPoint(x: -0.00108*width, y: 0.76859*height), control2: CGPoint(x: -0.00028*width, y: 0.77582*height))
         path.addCurve(to: CGPoint(x: 0.02072*width, y: 0.79088*height), control1: CGPoint(x: 0.00736*width, y: 0.7873*height), control2: CGPoint(x: 0.01379*width, y: 0.79083*height))
         path.addLine(to: CGPoint(x: 0.97893*width, y: 0.79088*height))
         path.addLine(to: CGPoint(x: 0.97893*width, y: 0.79046*height))
         path.addCurve(to: CGPoint(x: 0.99187*width, y: 0.78607*height), control1: CGPoint(x: 0.98361*width, y: 0.79048*height), control2: CGPoint(x: 0.98817*width, y: 0.78894*height))
         path.addCurve(to: CGPoint(x: 0.99561*width, y: 0.75666*height), control1: CGPoint(x: 1.00102*width, y: 0.77898*height), control2: CGPoint(x: 1.0027*width, y: 0.76582*height))
         path.closeSubpath()
         return path
     }
}

struct Rhombus: Shape {
    func path(in rect: CGRect) -> Path {
         var path = Path()
         let width = rect.size.width
         let height = rect.size.height
         path.move(to: CGPoint(x: 0.99634*width, y: 0.20535*height))
         path.addCurve(to: CGPoint(x: 0.97952*width, y: 0.19653*height), control1: CGPoint(x: 0.9925*width, y: 0.19985*height), control2: CGPoint(x: 0.98623*width, y: 0.19656*height))
         path.addLine(to: CGPoint(x: 0.20613*width, y: 0.19653*height))
         path.addCurve(to: CGPoint(x: 0.18679*width, y: 0.2104*height), control1: CGPoint(x: 0.19743*width, y: 0.19671*height), control2: CGPoint(x: 0.18974*width, y: 0.20222*height))
         path.addLine(to: CGPoint(x: 0.00101*width, y: 0.77573*height))
         path.addCurve(to: CGPoint(x: 0.00395*width, y: 0.79423*height), control1: CGPoint(x: -0.00103*width, y: 0.78201*height), control2: CGPoint(x: 0.00006*width, y: 0.78889*height))
         path.addCurve(to: CGPoint(x: 0.02076*width, y: 0.80347*height), control1: CGPoint(x: 0.00774*width, y: 0.79984*height), control2: CGPoint(x: 0.014*width, y: 0.80328*height))
         path.addLine(to: CGPoint(x: 0.79458*width, y: 0.80347*height))
         path.addCurve(to: CGPoint(x: 0.81434*width, y: 0.78918*height), control1: CGPoint(x: 0.80354*width, y: 0.80341*height), control2: CGPoint(x: 0.81147*width, y: 0.79767*height))
         path.addLine(to: CGPoint(x: 0.99886*width, y: 0.22385*height))
         path.addCurve(to: CGPoint(x: 0.99634*width, y: 0.20535*height), control1: CGPoint(x: 1.00102*width, y: 0.21763*height), control2: CGPoint(x: 1.00008*width, y: 0.21076*height))
         path.closeSubpath()
         return path
     }
}

struct Octagon: Shape {
    func path(in rect: CGRect) -> Path {
          var path = Path()
          let width = rect.size.width
          let height = rect.size.height
          path.move(to: CGPoint(x: 0.99393*width, y: 0.28542*height))
          path.addLine(to: CGPoint(x: 0.71457*width, y: 0.00649*height))
          path.addCurve(to: CGPoint(x: 0.69826*width, y: 0.00005*height), control1: CGPoint(x: 0.7104*width, y: 0.00197*height), control2: CGPoint(x: 0.7044*width, y: -0.0004*height))
          path.addLine(to: CGPoint(x: 0.30175*width, y: 0.00005*height))
          path.addCurve(to: CGPoint(x: 0.28545*width, y: 0.00649*height), control1: CGPoint(x: 0.29563*width, y: -0.00034*height), control2: CGPoint(x: 0.28965*width, y: 0.00202*height))
          path.addLine(to: CGPoint(x: 0.00652*width, y: 0.28542*height))
          path.addCurve(to: CGPoint(x: 0.00008*width, y: 0.30173*height), control1: CGPoint(x: 0.00215*width, y: 0.28969*height), control2: CGPoint(x: -0.00019*width, y: 0.29562*height))
          path.addLine(to: CGPoint(x: 0.00008*width, y: 0.69953*height))
          path.addCurve(to: CGPoint(x: 0.00652*width, y: 0.71455*height), control1: CGPoint(x: 0.00016*width, y: 0.70519*height), control2: CGPoint(x: 0.00247*width, y: 0.71058*height))
          path.addLine(to: CGPoint(x: 0.28545*width, y: 0.99391*height))
          path.addCurve(to: CGPoint(x: 0.30176*width, y: 0.99992*height), control1: CGPoint(x: 0.28973*width, y: 0.99822*height), control2: CGPoint(x: 0.2957*width, y: 1.00042*height))
          path.addLine(to: CGPoint(x: 0.69827*width, y: 0.99992*height))
          path.addCurve(to: CGPoint(x: 0.71457*width, y: 0.99391*height), control1: CGPoint(x: 0.70433*width, y: 1.00048*height), control2: CGPoint(x: 0.71032*width, y: 0.99827*height))
          path.addLine(to: CGPoint(x: 0.99393*width, y: 0.71197*height))
          path.addCurve(to: CGPoint(x: 0.99994*width, y: 0.69695*height), control1: CGPoint(x: 0.99774*width, y: 0.70789*height), control2: CGPoint(x: 0.99989*width, y: 0.70253*height))
          path.addLine(to: CGPoint(x: 0.99994*width, y: 0.30044*height))
          path.addCurve(to: CGPoint(x: 0.99393*width, y: 0.28542*height), control1: CGPoint(x: 0.99989*width, y: 0.29486*height), control2: CGPoint(x: 0.99774*width, y: 0.2895*height))
          path.closeSubpath()
          return path
      }
}

struct Rounded_Triangle: Shape {
    func path(in rect: CGRect) -> Path {
           var path = Path()
           let width = rect.size.width
           let height = rect.size.height
           path.move(to: CGPoint(x: 0.97797*width, y: 0.75836*height))
           path.addLine(to: CGPoint(x: 0.60572*width, y: 0.11296*height))
           path.addCurve(to: CGPoint(x: 0.55868*width, y: 0.06592*height), control1: CGPoint(x: 0.59474*width, y: 0.0932*height), control2: CGPoint(x: 0.57844*width, y: 0.0769*height))
           path.addCurve(to: CGPoint(x: 0.39398*width, y: 0.11296*height), control1: CGPoint(x: 0.5002*width, y: 0.03343*height), control2: CGPoint(x: 0.42647*width, y: 0.05449*height))
           path.addLine(to: CGPoint(x: 0.01623*width, y: 0.76767*height))
           path.addCurve(to: CGPoint(x: 0, y: 0.82837*height), control1: CGPoint(x: 0.00557*width, y: 0.78613*height), control2: CGPoint(x: -0.00002*width, y: 0.80706*height))
           path.addCurve(to: CGPoint(x: 0.12125*width, y: 0.94935*height), control1: CGPoint(x: 0.00007*width, y: 0.89526*height), control2: CGPoint(x: 0.05436*width, y: 0.94942*height))
           path.addLine(to: CGPoint(x: 0.87675*width, y: 0.94935*height))
           path.addLine(to: CGPoint(x: 0.88014*width, y: 0.94893*height))
           path.addCurve(to: CGPoint(x: 0.99999*width, y: 0.82823*height), control1: CGPoint(x: 0.94637*width, y: 0.94823*height), control2: CGPoint(x: 0.99976*width, y: 0.89447*height))
           path.addCurve(to: CGPoint(x: 0.97797*width, y: 0.75836*height), control1: CGPoint(x: 1.00036*width, y: 0.80318*height), control2: CGPoint(x: 0.99263*width, y: 0.77867*height))
           path.closeSubpath()
           return path
       }
}

struct RoundedSquare: Shape {
    func path(in rect: CGRect) -> Path {
         var path = Path()
         let width = rect.size.width
         let height = rect.size.height
         path.move(to: CGPoint(x: 0.87135*width, y: 0.00002*height))
         path.addLine(to: CGPoint(x: 0.1308*width, y: 0.00002*height))
         path.addCurve(to: CGPoint(x: 0.12863*width, y: 0), control1: CGPoint(x: 0.13008*width, y: 0.00001*height), control2: CGPoint(x: 0.12935*width, y: 0))
         path.addCurve(to: CGPoint(x: 0.00001*width, y: 0.12866*height), control1: CGPoint(x: 0.05759*width, y: 0.00001*height), control2: CGPoint(x: 0, y: 0.05761*height))
         path.addLine(to: CGPoint(x: 0.00001*width, y: 0.86921*height))
         path.addCurve(to: CGPoint(x: 0.1308*width, y: height), control1: CGPoint(x: 0.00024*width, y: 0.94135*height), control2: CGPoint(x: 0.05866*width, y: 0.99977*height))
         path.addLine(to: CGPoint(x: 0.87135*width, y: height))
         path.addCurve(to: CGPoint(x: 0.99999*width, y: 0.86921*height), control1: CGPoint(x: 0.94264*width, y: 0.99861*height), control2: CGPoint(x: 0.99977*width, y: 0.94052*height))
         path.addLine(to: CGPoint(x: 0.99999*width, y: 0.12866*height))
         path.addCurve(to: CGPoint(x: 0.87135*width, y: 0.00002*height), control1: CGPoint(x: 0.99999*width, y: 0.05761*height), control2: CGPoint(x: 0.9424*width, y: 0.00002*height))
         path.closeSubpath()
         return path
     }
}

struct RounedHexagon: Shape {
    func path(in rect: CGRect) -> Path {
          var path = Path()
          let width = rect.size.width
          let height = rect.size.height
          path.move(to: CGPoint(x: 0.5*width, y: 0))
          path.addCurve(to: CGPoint(x: 0, y: 0.5*height), control1: CGPoint(x: 0.22386*width, y: 0), control2: CGPoint(x: 0, y: 0.22386*height))
          path.addCurve(to: CGPoint(x: 0.5*width, y: height), control1: CGPoint(x: 0, y: 0.77614*height), control2: CGPoint(x: 0.22386*width, y: height))
          path.addCurve(to: CGPoint(x: width, y: 0.5*height), control1: CGPoint(x: 0.77595*width, y: 0.99953*height), control2: CGPoint(x: 0.99953*width, y: 0.77594*height))
          path.addCurve(to: CGPoint(x: 0.5*width, y: 0), control1: CGPoint(x: width, y: 0.22386*height), control2: CGPoint(x: 0.77614*width, y: 0))
          path.closeSubpath()
          return path
      }
}

struct RoundedStar_6: Shape {
    func path(in rect: CGRect) -> Path {
          var path = Path()
          let width = rect.size.width
          let height = rect.size.height
          path.move(to: CGPoint(x: 0.92586*width, y: 0.61849*height))
          path.addLine(to: CGPoint(x: 0.83889*width, y: 0.50001*height))
          path.addLine(to: CGPoint(x: 0.92418*width, y: 0.38068*height))
          path.addCurve(to: CGPoint(x: 0.9465*width, y: 0.29689*height), control1: CGPoint(x: 0.94176*width, y: 0.35649*height), control2: CGPoint(x: 0.94971*width, y: 0.32662*height))
          path.addCurve(to: CGPoint(x: 0.81368*width, y: 0.18993*height), control1: CGPoint(x: 0.93936*width, y: 0.23067*height), control2: CGPoint(x: 0.87989*width, y: 0.18279*height))
          path.addLine(to: CGPoint(x: 0.66788*width, y: 0.2059*height))
          path.addLine(to: CGPoint(x: 0.61032*width, y: 0.07187*height))
          path.addCurve(to: CGPoint(x: 0.54878*width, y: 0.01033*height), control1: CGPoint(x: 0.59818*width, y: 0.04441*height), control2: CGPoint(x: 0.57624*width, y: 0.02246*height))
          path.addCurve(to: CGPoint(x: 0.38974*width, y: 0.07187*height), control1: CGPoint(x: 0.48787*width, y: -0.0166*height), control2: CGPoint(x: 0.41666*width, y: 0.01095*height))
          path.addLine(to: CGPoint(x: 0.33175*width, y: 0.2059*height))
          path.addLine(to: CGPoint(x: 0.18428*width, y: 0.19077*height))
          path.addCurve(to: CGPoint(x: 0.06705*width, y: 0.25043*height), control1: CGPoint(x: 0.13688*width, y: 0.18594*height), control2: CGPoint(x: 0.09104*width, y: 0.20927*height))
          path.addCurve(to: CGPoint(x: 0.07378*width, y: 0.38152*height), control1: CGPoint(x: 0.04312*width, y: 0.2916*height), control2: CGPoint(x: 0.04576*width, y: 0.34302*height))
          path.addLine(to: CGPoint(x: 0.16075*width, y: 0.50001*height))
          path.addLine(to: CGPoint(x: 0.07378*width, y: 0.6206*height))
          path.addCurve(to: CGPoint(x: 0.06705*width, y: 0.7521*height), control1: CGPoint(x: 0.04579*width, y: 0.65927*height), control2: CGPoint(x: 0.04316*width, y: 0.71078*height))
          path.addCurve(to: CGPoint(x: 0.18554*width, y: 0.81009*height), control1: CGPoint(x: 0.09184*width, y: 0.79291*height), control2: CGPoint(x: 0.13811*width, y: 0.81555*height))
          path.addLine(to: CGPoint(x: 0.33175*width, y: 0.79412*height))
          path.addLine(to: CGPoint(x: 0.38974*width, y: 0.92815*height))
          path.addCurve(to: CGPoint(x: 0.49982*width, y: height), control1: CGPoint(x: 0.409*width, y: 0.97175*height), control2: CGPoint(x: 0.45215*width, y: 0.99991*height))
          path.addCurve(to: CGPoint(x: 0.60864*width, y: 0.92899*height), control1: CGPoint(x: 0.5468*width, y: 0.99946*height), control2: CGPoint(x: 0.58923*width, y: 0.97178*height))
          path.addLine(to: CGPoint(x: 0.66788*width, y: 0.79412*height))
          path.addLine(to: CGPoint(x: 0.81536*width, y: 0.80967*height))
          path.addCurve(to: CGPoint(x: 0.89994*width, y: 0.78705*height), control1: CGPoint(x: 0.84539*width, y: 0.81299*height), control2: CGPoint(x: 0.87558*width, y: 0.80492*height))
          path.addCurve(to: CGPoint(x: 0.92586*width, y: 0.61849*height), control1: CGPoint(x: 0.95365*width, y: 0.74766*height), control2: CGPoint(x: 0.96525*width, y: 0.67219*height))
          path.closeSubpath()
          return path
      }
}

struct RoundedOctagon: Shape {

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.96492*width, y: 0.25782*height))
        path.addLine(to: CGPoint(x: 0.74091*width, y: 0.03508*height))
        path.addCurve(to: CGPoint(x: 0.65638*width, y: 0), control1: CGPoint(x: 0.71847*width, y: 0.01268*height), control2: CGPoint(x: 0.68809*width, y: 0.00007*height))
        path.addLine(to: CGPoint(x: 0.34193*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.2574*width, y: 0.03508*height), control1: CGPoint(x: 0.31025*width, y: 0.00021*height), control2: CGPoint(x: 0.27991*width, y: 0.0128*height))
        path.addLine(to: CGPoint(x: 0.03508*width, y: 0.25824*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.34277*height), control1: CGPoint(x: 0.01284*width, y: 0.28078*height), control2: CGPoint(x: 0.00025*width, y: 0.3111*height))
        path.addLine(to: CGPoint(x: 0, y: 0.65765*height))
        path.addCurve(to: CGPoint(x: 0.03508*width, y: 0.74218*height), control1: CGPoint(x: 0.00016*width, y: 0.68933*height), control2: CGPoint(x: 0.01276*width, y: 0.71969*height))
        path.addLine(to: CGPoint(x: 0.25824*width, y: 0.96492*height))
        path.addCurve(to: CGPoint(x: 0.34277*width, y: height), control1: CGPoint(x: 0.28076*width, y: 0.9872*height), control2: CGPoint(x: 0.3111*width, y: 0.99979*height))
        path.addLine(to: CGPoint(x: 0.65723*width, y: height))
        path.addCurve(to: CGPoint(x: 0.74218*width, y: 0.96492*height), control1: CGPoint(x: 0.6891*width, y: 1.00013*height), control2: CGPoint(x: 0.71969*width, y: 0.9875*height))
        path.addLine(to: CGPoint(x: 0.96492*width, y: 0.74134*height))
        path.addCurve(to: CGPoint(x: width, y: 0.6568*height), control1: CGPoint(x: 0.98724*width, y: 0.71885*height), control2: CGPoint(x: 0.99984*width, y: 0.68849*height))
        path.addLine(to: CGPoint(x: width, y: 0.34235*height))
        path.addCurve(to: CGPoint(x: 0.96492*width, y: 0.25782*height), control1: CGPoint(x: 0.99975*width, y: 0.31068*height), control2: CGPoint(x: 0.98716*width, y: 0.28036*height))
        path.closeSubpath()
        return path
    }
}

struct Ennegon : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.98379*width, y: 0.33788*height))
        path.addLine(to: CGPoint(x: 0.88097*width, y: 0.1587*height))
        path.addCurve(to: CGPoint(x: 0.83831*width, y: 0.11604*height), control1: CGPoint(x: 0.87068*width, y: 0.14103*height), control2: CGPoint(x: 0.85598*width, y: 0.12633*height))
        path.addLine(to: CGPoint(x: 0.66212*width, y: 0.01621*height))
        path.addCurve(to: CGPoint(x: 0.60196*width, y: 0), control1: CGPoint(x: 0.64382*width, y: 0.00566*height), control2: CGPoint(x: 0.62308*width, y: 0.00007*height))
        path.addLine(to: CGPoint(x: 0.39846*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.33831*width, y: 0.01621*height), control1: CGPoint(x: 0.37734*width, y: 0.00003*height), control2: CGPoint(x: 0.35659*width, y: 0.00562*height))
        path.addLine(to: CGPoint(x: 0.1587*width, y: 0.11903*height))
        path.addCurve(to: CGPoint(x: 0.11604*width, y: 0.16169*height), control1: CGPoint(x: 0.14104*width, y: 0.12933*height), control2: CGPoint(x: 0.12635*width, y: 0.14403*height))
        path.addLine(to: CGPoint(x: 0.01621*width, y: 0.33788*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.39804*height), control1: CGPoint(x: 0.00556*width, y: 0.35614*height), control2: CGPoint(x: -0.00003*width, y: 0.3769*height))
        path.addLine(to: CGPoint(x: 0, y: 0.60153*height))
        path.addCurve(to: CGPoint(x: 0.01621*width, y: 0.66169*height), control1: CGPoint(x: 0.00001*width, y: 0.62266*height), control2: CGPoint(x: 0.0056*width, y: 0.64342*height))
        path.addLine(to: CGPoint(x: 0.11945*width, y: 0.84129*height))
        path.addCurve(to: CGPoint(x: 0.16212*width, y: 0.88395*height), control1: CGPoint(x: 0.12965*width, y: 0.85904*height), control2: CGPoint(x: 0.14437*width, y: 0.87376*height))
        path.addLine(to: CGPoint(x: 0.33831*width, y: 0.98378*height))
        path.addCurve(to: CGPoint(x: 0.39846*width, y: height), control1: CGPoint(x: 0.35653*width, y: 0.99453*height), control2: CGPoint(x: 0.37732*width, y: 1.00013*height))
        path.addLine(to: CGPoint(x: 0.60196*width, y: height))
        path.addCurve(to: CGPoint(x: 0.66212*width, y: 0.98378*height), control1: CGPoint(x: 0.62311*width, y: 1.00009*height), control2: CGPoint(x: 0.64388*width, y: 0.99449*height))
        path.addLine(to: CGPoint(x: 0.8413*width, y: 0.88054*height))
        path.addCurve(to: CGPoint(x: 0.88396*width, y: 0.83788*height), control1: CGPoint(x: 0.85905*width, y: 0.87036*height), control2: CGPoint(x: 0.87378*width, y: 0.85564*height))
        path.addLine(to: CGPoint(x: 0.98379*width, y: 0.66169*height))
        path.addCurve(to: CGPoint(x: width, y: 0.60153*height), control1: CGPoint(x: 0.99438*width, y: 0.64341*height), control2: CGPoint(x: 0.99997*width, y: 0.62266*height))
        path.addLine(to: CGPoint(x: width, y: 0.39804*height))
        path.addCurve(to: CGPoint(x: 0.98379*width, y: 0.33788*height), control1: CGPoint(x: 1.00001*width, y: 0.3769*height), control2: CGPoint(x: 0.99442*width, y: 0.35615*height))
        path.closeSubpath()
        return path
    }
}

struct Rounded_Pentagon: Shape {
    func path(in rect: CGRect) -> Path {
         var path = Path()
         let width = rect.size.width
         let height = rect.size.height
         path.move(to: CGPoint(x: 0.956*width, y: 0.32485*height))
         path.addLine(to: CGPoint(x: 0.56292*width, y: 0.0394*height))
         path.addCurve(to: CGPoint(x: 0.43742*width, y: 0.0394*height), control1: CGPoint(x: 0.52525*width, y: 0.013*height), control2: CGPoint(x: 0.47509*width, y: 0.013*height))
         path.addLine(to: CGPoint(x: 0.04435*width, y: 0.32485*height))
         path.addCurve(to: CGPoint(x: 0.00521*width, y: 0.44439*height), control1: CGPoint(x: 0.00673*width, y: 0.35197*height), control2: CGPoint(x: -0.00909*width, y: 0.40027*height))
         path.addLine(to: CGPoint(x: 0.15538*width, y: 0.90638*height))
         path.addCurve(to: CGPoint(x: 0.25705*width, y: 0.9804*height), control1: CGPoint(x: 0.1696*width, y: 0.95051*height), control2: CGPoint(x: 0.21068*width, y: 0.98042*height))
         path.addLine(to: CGPoint(x: 0.74287*width, y: 0.9804*height))
         path.addCurve(to: CGPoint(x: 0.84454*width, y: 0.90638*height), control1: CGPoint(x: 0.78924*width, y: 0.98042*height), control2: CGPoint(x: 0.83032*width, y: 0.95051*height))
         path.addLine(to: CGPoint(x: 0.99471*width, y: 0.44439*height))
         path.addCurve(to: CGPoint(x: 0.956*width, y: 0.32485*height), control1: CGPoint(x: 1.0091*width, y: 0.40036*height), control2: CGPoint(x: 0.99346*width, y: 0.35208*height))
         path.closeSubpath()
         return path
     }
}

struct Rounded_Star5: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.89777*width, y: 0.29586*height))
        path.addLine(to: CGPoint(x: 0.69743*width, y: 0.26693*height))
        path.addLine(to: CGPoint(x: 0.60768*width, y: 0.08531*height))
        path.addCurve(to: CGPoint(x: 0.55305*width, y: 0.03068*height), control1: CGPoint(x: 0.596*width, y: 0.06157*height), control2: CGPoint(x: 0.57679*width, y: 0.04236*height))
        path.addCurve(to: CGPoint(x: 0.39246*width, y: 0.08531*height), control1: CGPoint(x: 0.49362*width, y: 0.00142*height), control2: CGPoint(x: 0.42172*width, y: 0.02588*height))
        path.addLine(to: CGPoint(x: 0.30314*width, y: 0.26693*height))
        path.addLine(to: CGPoint(x: 0.10237*width, y: 0.29586*height))
        path.addCurve(to: CGPoint(x: 0.00582*width, y: 0.37752*height), control1: CGPoint(x: 0.05746*width, y: 0.3029*height), control2: CGPoint(x: 0.02021*width, y: 0.3344*height))
        path.addCurve(to: CGPoint(x: 0.03644*width, y: 0.50002*height), control1: CGPoint(x: -0.00824*width, y: 0.42085*height), control2: CGPoint(x: 0.00365*width, y: 0.46841*height))
        path.addLine(to: CGPoint(x: 0.18106*width, y: 0.64081*height))
        path.addLine(to: CGPoint(x: 0.14661*width, y: 0.8403*height))
        path.addCurve(to: CGPoint(x: 0.1934*width, y: 0.95855*height), control1: CGPoint(x: 0.13831*width, y: 0.88542*height), control2: CGPoint(x: 0.15647*width, y: 0.93132*height))
        path.addCurve(to: CGPoint(x: 0.321*width, y: 0.9679*height), control1: CGPoint(x: 0.23072*width, y: 0.98559*height), control2: CGPoint(x: 0.28013*width, y: 0.98921*height))
        path.addLine(to: CGPoint(x: 0.50007*width, y: 0.87348*height))
        path.addLine(to: CGPoint(x: 0.67914*width, y: 0.9679*height))
        path.addCurve(to: CGPoint(x: 0.73486*width, y: 0.98152*height), control1: CGPoint(x: 0.69639*width, y: 0.97676*height), control2: CGPoint(x: 0.71548*width, y: 0.98142*height))
        path.addLine(to: CGPoint(x: 0.73486*width, y: 0.98024*height))
        path.addCurve(to: CGPoint(x: 0.75576*width, y: 0.97848*height), control1: CGPoint(x: 0.74187*width, y: 0.98027*height), control2: CGPoint(x: 0.74886*width, y: 0.97968*height))
        path.addCurve(to: CGPoint(x: 0.85311*width, y: 0.8403*height), control1: CGPoint(x: 0.8208*width, y: 0.96721*height), control2: CGPoint(x: 0.86439*width, y: 0.90534*height))
        path.addLine(to: CGPoint(x: 0.81908*width, y: 0.64166*height))
        path.addLine(to: CGPoint(x: 0.96413*width, y: 0.50002*height))
        path.addCurve(to: CGPoint(x: 0.99867*width, y: 0.43222*height), control1: CGPoint(x: 0.98269*width, y: 0.48177*height), control2: CGPoint(x: 0.99482*width, y: 0.45797*height))
        path.addCurve(to: CGPoint(x: 0.89777*width, y: 0.29586*height), control1: CGPoint(x: 1.00846*width, y: 0.3667*height), control2: CGPoint(x: 0.96329*width, y: 0.30565*height))
        path.closeSubpath()
        return path
    }
}

struct RoundedOctagon_1: Shape {
    func path(in rect: CGRect) -> Path {
         var path = Path()
         let width = rect.size.width
         let height = rect.size.height
         path.move(to: CGPoint(x: 0.98392*width, y: 0.38472*height))
         path.addLine(to: CGPoint(x: 0.85258*width, y: 0.15681*height))
         path.addCurve(to: CGPoint(x: 0.7912*width, y: 0.10401*height), control1: CGPoint(x: 0.83884*width, y: 0.13264*height), control2: CGPoint(x: 0.81715*width, y: 0.11398*height))
         path.addLine(to: CGPoint(x: 0.54397*width, y: 0.01388*height))
         path.addCurve(to: CGPoint(x: 0.45813*width, y: 0.01388*height), control1: CGPoint(x: 0.51627*width, y: 0.00366*height), control2: CGPoint(x: 0.48583*width, y: 0.00366*height))
         path.addLine(to: CGPoint(x: 0.21262*width, y: 0.10358*height))
         path.addCurve(to: CGPoint(x: 0.14909*width, y: 0.15681*height), control1: CGPoint(x: 0.18588*width, y: 0.11336*height), control2: CGPoint(x: 0.1634*width, y: 0.13219*height))
         path.addLine(to: CGPoint(x: 0.01604*width, y: 0.38601*height))
         path.addCurve(to: CGPoint(x: 0.00187*width, y: 0.46756*height), control1: CGPoint(x: 0.00191*width, y: 0.4107*height), control2: CGPoint(x: -0.0031*width, y: 0.43956*height))
         path.addLine(to: CGPoint(x: 0.04737*width, y: 0.72509*height))
         path.addCurve(to: CGPoint(x: 0.09029*width, y: 0.79677*height), control1: CGPoint(x: 0.05275*width, y: 0.75331*height), control2: CGPoint(x: 0.06796*width, y: 0.7787*height))
         path.addLine(to: CGPoint(x: 0.29202*width, y: 0.96588*height))
         path.addCurve(to: CGPoint(x: 0.36971*width, y: 0.99378*height), control1: CGPoint(x: 0.31385*width, y: 0.984*height), control2: CGPoint(x: 0.34135*width, y: 0.99387*height))
         path.addLine(to: CGPoint(x: 0.63239*width, y: 0.99378*height))
         path.addCurve(to: CGPoint(x: 0.70794*width, y: 0.9646*height), control1: CGPoint(x: 0.66018*width, y: 0.99302*height), control2: CGPoint(x: 0.68685*width, y: 0.98271*height))
         path.addLine(to: CGPoint(x: 0.90967*width, y: 0.79548*height))
         path.addCurve(to: CGPoint(x: 0.95259*width, y: 0.7238*height), control1: CGPoint(x: 0.93195*width, y: 0.77737*height), control2: CGPoint(x: 0.94714*width, y: 0.752*height))
         path.addLine(to: CGPoint(x: 0.99809*width, y: 0.46627*height))
         path.addCurve(to: CGPoint(x: 0.98392*width, y: 0.38472*height), control1: CGPoint(x: 1.00313*width, y: 0.43827*height), control2: CGPoint(x: 0.99812*width, y: 0.40938*height))
         path.closeSubpath()
         return path
     }
}

struct Asterisk: Shape {
    func path(in rect: CGRect) -> Path {
           var path = Path()
           let width = rect.size.width
           let height = rect.size.height
           path.move(to: CGPoint(x: 0.9198*width, y: 0.38779*height))
           path.addLine(to: CGPoint(x: 0.84199*width, y: 0.36*height))
           path.addLine(to: CGPoint(x: 0.87619*width, y: 0.2869*height))
           path.addCurve(to: CGPoint(x: 0.85054*width, y: 0.14796*height), control1: CGPoint(x: 0.89852*width, y: 0.2399*height), control2: CGPoint(x: 0.88818*width, y: 0.18389*height))
           path.addCurve(to: CGPoint(x: 0.71374*width, y: 0.12445*height), control1: CGPoint(x: 0.81424*width, y: 0.11249*height), control2: CGPoint(x: 0.75981*width, y: 0.10314*height))
           path.addLine(to: CGPoint(x: 0.6415*width, y: 0.15865*height))
           path.addLine(to: CGPoint(x: 0.61328*width, y: 0.08085*height))
           path.addCurve(to: CGPoint(x: 0.54042*width, y: 0.00798*height), control1: CGPoint(x: 0.60112*width, y: 0.04688*height), control2: CGPoint(x: 0.57439*width, y: 0.02014*height))
           path.addCurve(to: CGPoint(x: 0.38629*width, y: 0.08085*height), control1: CGPoint(x: 0.47773*width, y: -0.01446*height), control2: CGPoint(x: 0.40873*width, y: 0.01816*height))
           path.addLine(to: CGPoint(x: 0.35893*width, y: 0.15865*height))
           path.addLine(to: CGPoint(x: 0.28625*width, y: 0.12445*height))
           path.addCurve(to: CGPoint(x: 0.17555*width, y: 0.12445*height), control1: CGPoint(x: 0.25153*width, y: 0.10651*height), control2: CGPoint(x: 0.21027*width, y: 0.10651*height))
           path.addCurve(to: CGPoint(x: 0.12381*width, y: 0.2869*height), control1: CGPoint(x: 0.1164*width, y: 0.15502*height), control2: CGPoint(x: 0.09323*width, y: 0.22775*height))
           path.addLine(to: CGPoint(x: 0.15801*width, y: 0.36*height))
           path.addLine(to: CGPoint(x: 0.0802*width, y: 0.38736*height))
           path.addCurve(to: CGPoint(x: 0.00687*width, y: 0.46069*height), control1: CGPoint(x: 0.04592*width, y: 0.39945*height), control2: CGPoint(x: 0.01896*width, y: 0.42641*height))
           path.addCurve(to: CGPoint(x: 0.0802*width, y: 0.61393*height), control1: CGPoint(x: -0.01519*width, y: 0.52325*height), control2: CGPoint(x: 0.01764*width, y: 0.59187*height))
           path.addLine(to: CGPoint(x: 0.15801*width, y: 0.64172*height))
           path.addLine(to: CGPoint(x: 0.12381*width, y: 0.71439*height))
           path.addCurve(to: CGPoint(x: 0.12381*width, y: 0.82713*height), control1: CGPoint(x: 0.10508*width, y: 0.74964*height), control2: CGPoint(x: 0.10508*width, y: 0.79189*height))
           path.addCurve(to: CGPoint(x: 0.28626*width, y: 0.87684*height), control1: CGPoint(x: 0.15494*width, y: 0.88572*height), control2: CGPoint(x: 0.22767*width, y: 0.90797*height))
           path.addLine(to: CGPoint(x: 0.35893*width, y: 0.84264*height))
           path.addLine(to: CGPoint(x: 0.38629*width, y: 0.91916*height))
           path.addCurve(to: CGPoint(x: 0.5*width, y: 0.9991*height), control1: CGPoint(x: 0.40347*width, y: 0.96718*height), control2: CGPoint(x: 0.449*width, y: 0.99919*height))
           path.addCurve(to: CGPoint(x: 0.61372*width, y: 0.92044*height), control1: CGPoint(x: 0.55071*width, y: 0.99951*height), control2: CGPoint(x: 0.59621*width, y: 0.96804*height))
           path.addLine(to: CGPoint(x: 0.6415*width, y: 0.84264*height))
           path.addLine(to: CGPoint(x: 0.71375*width, y: 0.87684*height))
           path.addCurve(to: CGPoint(x: 0.82648*width, y: 0.87684*height), control1: CGPoint(x: 0.749*width, y: 0.89557*height), control2: CGPoint(x: 0.79124*width, y: 0.89557*height))
           path.addCurve(to: CGPoint(x: 0.87619*width, y: 0.71439*height), control1: CGPoint(x: 0.88507*width, y: 0.84571*height), control2: CGPoint(x: 0.90733*width, y: 0.77298*height))
           path.addLine(to: CGPoint(x: 0.84199*width, y: 0.64172*height))
           path.addLine(to: CGPoint(x: 0.9198*width, y: 0.61436*height))
           path.addCurve(to: CGPoint(x: 0.99313*width, y: 0.54103*height), control1: CGPoint(x: 0.95408*width, y: 0.60227*height), control2: CGPoint(x: 0.98104*width, y: 0.57531*height))
           path.addCurve(to: CGPoint(x: 0.9198*width, y: 0.38779*height), control1: CGPoint(x: 1.01519*width, y: 0.47846*height), control2: CGPoint(x: 0.98236*width, y: 0.40985*height))
           path.closeSubpath()
           return path
       }
}

struct Rounded_Rhombus: Shape {
    func path(in rect: CGRect) -> Path {
         var path = Path()
         let width = rect.size.width
         let height = rect.size.height
         path.move(to: CGPoint(x: 0.96049*width, y: 0.40369*height))
         path.addLine(to: CGPoint(x: 0.59491*width, y: 0.03812*height))
         path.addCurve(to: CGPoint(x: 0.4049*width, y: 0.03812*height), control1: CGPoint(x: 0.54086*width, y: -0.01037*height), control2: CGPoint(x: 0.45896*width, y: -0.01037*height))
         path.addLine(to: CGPoint(x: 0.03933*width, y: 0.40325*height))
         path.addCurve(to: CGPoint(x: 0.03933*width, y: 0.59326*height), control1: CGPoint(x: -0.01311*width, y: 0.45573*height), control2: CGPoint(x: -0.01311*width, y: 0.54078*height))
         path.addLine(to: CGPoint(x: 0.4049*width, y: 0.9584*height))
         path.addCurve(to: CGPoint(x: 0.49991*width, y: 0.99824*height), control1: CGPoint(x: 0.42982*width, y: 0.98406*height), control2: CGPoint(x: 0.46414*width, y: 0.99845*height))
         path.addCurve(to: CGPoint(x: 0.59491*width, y: 0.95927*height), control1: CGPoint(x: 0.53555*width, y: 0.99868*height), control2: CGPoint(x: 0.56984*width, y: 0.98461*height))
         path.addLine(to: CGPoint(x: 0.96048*width, y: 0.5937*height))
         path.addCurve(to: CGPoint(x: 0.96103*width, y: 0.59315*height), control1: CGPoint(x: 0.96067*width, y: 0.59352*height), control2: CGPoint(x: 0.96085*width, y: 0.59333*height))
         path.addCurve(to: CGPoint(x: 0.96049*width, y: 0.40369*height), control1: CGPoint(x: 1.0132*width, y: 0.54068*height), control2: CGPoint(x: 1.01296*width, y: 0.45586*height))
         path.closeSubpath()
         return path
     }
}

struct Rounded_Oval: Shape {
    func path(in rect: CGRect) -> Path {
         var path = Path()
         let width = rect.size.width
         let height = rect.size.height
         path.move(to: CGPoint(x: 0.67167*width, y: 0))
         path.addLine(to: CGPoint(x: 0.32833*width, y: 0))
         path.addCurve(to: CGPoint(x: 0.32747*width, y: 0), control1: CGPoint(x: 0.32804*width, y: 0), control2: CGPoint(x: 0.32775*width, y: 0))
         path.addCurve(to: CGPoint(x: 0, y: 0.32833*height), control1: CGPoint(x: 0.14637*width, y: 0.00024*height), control2: CGPoint(x: -0.00024*width, y: 0.14723*height))
         path.addLine(to: CGPoint(x: 0, y: 0.67167*height))
         path.addCurve(to: CGPoint(x: 0, y: 0.67253*height), control1: CGPoint(x: 0, y: 0.67196*height), control2: CGPoint(x: 0, y: 0.67225*height))
         path.addCurve(to: CGPoint(x: 0.32833*width, y: height), control1: CGPoint(x: 0.00024*width, y: 0.85363*height), control2: CGPoint(x: 0.14723*width, y: 1.00024*height))
         path.addLine(to: CGPoint(x: 0.67167*width, y: height))
         path.addCurve(to: CGPoint(x: 0.67253*width, y: height), control1: CGPoint(x: 0.67196*width, y: height), control2: CGPoint(x: 0.67225*width, y: height))
         path.addCurve(to: CGPoint(x: width, y: 0.67167*height), control1: CGPoint(x: 0.85363*width, y: 0.99976*height), control2: CGPoint(x: 1.00024*width, y: 0.85277*height))
         path.addLine(to: CGPoint(x: width, y: 0.32833*height))
         path.addCurve(to: CGPoint(x: width, y: 0.32747*height), control1: CGPoint(x: width, y: 0.32804*height), control2: CGPoint(x: width, y: 0.32775*height))
         path.addCurve(to: CGPoint(x: 0.67167*width, y: 0), control1: CGPoint(x: 0.99976*width, y: 0.14637*height), control2: CGPoint(x: 0.85277*width, y: -0.00024*height))
         path.closeSubpath()
         return path
     }
}

struct Oval: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.20456*width, y: 0.5*height), control1: CGPoint(x: 0.33721*width, y: 0), control2: CGPoint(x: 0.20456*width, y: 0.22438*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: height), control1: CGPoint(x: 0.20456*width, y: 0.77562*height), control2: CGPoint(x: 0.33721*width, y: height))
        path.addCurve(to: CGPoint(x: 0.79544*width, y: 0.5*height), control1: CGPoint(x: 0.66279*width, y: height), control2: CGPoint(x: 0.79544*width, y: 0.77562*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0), control1: CGPoint(x: 0.79544*width, y: 0.22438*height), control2: CGPoint(x: 0.66279*width, y: 0))
        path.closeSubpath()
        return path
    }
}

struct Enegon_1: Shape {
    func path(in rect: CGRect) -> Path {
          var path = Path()
          let width = rect.size.width
          let height = rect.size.height
          path.move(to: CGPoint(x: 0.997*width, y: 0.36163*height))
          path.addLine(to: CGPoint(x: 0.86852*width, y: 0.13936*height))
          path.addCurve(to: CGPoint(x: 0.86081*width, y: 0.13165*height), control1: CGPoint(x: 0.86663*width, y: 0.13619*height), control2: CGPoint(x: 0.86398*width, y: 0.13354*height))
          path.addLine(to: CGPoint(x: 0.63854*width, y: 0.00317*height))
          path.addCurve(to: CGPoint(x: 0.62826*width, y: 0.0006*height), control1: CGPoint(x: 0.63533*width, y: 0.00161*height), control2: CGPoint(x: 0.63183*width, y: 0.00074*height))
          path.addLine(to: CGPoint(x: 0.37131*width, y: 0.0006*height))
          path.addCurve(to: CGPoint(x: 0.36145*width, y: 0.00275*height), control1: CGPoint(x: 0.36791*width, y: 0.0006*height), control2: CGPoint(x: 0.36455*width, y: 0.00133*height))
          path.addLine(to: CGPoint(x: 0.13919*width, y: 0.13123*height))
          path.addCurve(to: CGPoint(x: 0.13148*width, y: 0.13893*height), control1: CGPoint(x: 0.13597*width, y: 0.13305*height), control2: CGPoint(x: 0.13331*width, y: 0.13572*height))
          path.addLine(to: CGPoint(x: 0.003*width, y: 0.3612*height))
          path.addCurve(to: CGPoint(x: 0, y: 0.37148*height), control1: CGPoint(x: 0.00111*width, y: 0.36431*height), control2: CGPoint(x: 0.00007*width, y: 0.36785*height))
          path.addLine(to: CGPoint(x: 0, y: 0.62844*height))
          path.addCurve(to: CGPoint(x: 0.00257*width, y: 0.63829*height), control1: CGPoint(x: -0.00002*width, y: 0.63189*height), control2: CGPoint(x: 0.00087*width, y: 0.63529*height))
          path.addLine(to: CGPoint(x: 0.13105*width, y: 0.86056*height))
          path.addCurve(to: CGPoint(x: 0.13876*width, y: 0.86827*height), control1: CGPoint(x: 0.13288*width, y: 0.86378*height), control2: CGPoint(x: 0.13554*width, y: 0.86644*height))
          path.addLine(to: CGPoint(x: 0.36103*width, y: 0.99675*height))
          path.addCurve(to: CGPoint(x: 0.37131*width, y: 0.99932*height), control1: CGPoint(x: 0.36416*width, y: 0.99853*height), control2: CGPoint(x: 0.36771*width, y: 0.99942*height))
          path.addLine(to: CGPoint(x: 0.62826*width, y: 0.99932*height))
          path.addCurve(to: CGPoint(x: 0.63854*width, y: 0.99761*height), control1: CGPoint(x: 0.63178*width, y: 0.99962*height), control2: CGPoint(x: 0.63531*width, y: 0.99903*height))
          path.addLine(to: CGPoint(x: 0.86081*width, y: 0.86913*height))
          path.addCurve(to: CGPoint(x: 0.86852*width, y: 0.86142*height), control1: CGPoint(x: 0.86399*width, y: 0.86725*height), control2: CGPoint(x: 0.86664*width, y: 0.8646*height))
          path.addLine(to: CGPoint(x: 0.997*width, y: 0.63915*height))
          path.addCurve(to: CGPoint(x: width, y: 0.62887*height), control1: CGPoint(x: 0.99893*width, y: 0.63607*height), control2: CGPoint(x: 0.99997*width, y: 0.63251*height))
          path.addLine(to: CGPoint(x: width, y: 0.37191*height))
          path.addCurve(to: CGPoint(x: 0.997*width, y: 0.36163*height), control1: CGPoint(x: 0.99993*width, y: 0.36828*height), control2: CGPoint(x: 0.99889*width, y: 0.36473*height))
          path.closeSubpath()
          return path
      }
}

struct SemiCircle_Bottom: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.9789*width, y: 0.23945*height))
        path.addLine(to: CGPoint(x: 0.0211*width, y: 0.23945*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.26055*height), control1: CGPoint(x: 0.00945*width, y: 0.23945*height), control2: CGPoint(x: 0, y: 0.2489*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.76055*height), control1: CGPoint(x: 0.00047*width, y: 0.5365*height), control2: CGPoint(x: 0.22406*width, y: 0.76008*height))
        path.addCurve(to: CGPoint(x: width, y: 0.26055*height), control1: CGPoint(x: 0.77604*width, y: 0.76031*height), control2: CGPoint(x: 0.99976*width, y: 0.5366*height))
        path.addCurve(to: CGPoint(x: 0.9789*width, y: 0.23945*height), control1: CGPoint(x: width, y: 0.2489*height), control2: CGPoint(x: 0.99055*width, y: 0.23945*height))
        path.closeSubpath()
        return path
    }
}

struct SemiCircle_Top: Shape {
    func path(in rect: CGRect) -> Path {
          var path = Path()
          let width = rect.size.width
          let height = rect.size.height
          path.move(to: CGPoint(x: 0.50016*width, y: 0.23953*height))
          path.addCurve(to: CGPoint(x: 0.00001*width, y: 0.73936*height), control1: CGPoint(x: 0.22402*width, y: 0.23944*height), control2: CGPoint(x: 0.00009*width, y: 0.46322*height))
          path.addCurve(to: CGPoint(x: 0.00001*width, y: 0.74023*height), control1: CGPoint(x: 0, y: 0.73966*height), control2: CGPoint(x: 0, y: 0.73994*height))
          path.addCurve(to: CGPoint(x: 0.02111*width, y: 0.76047*height), control1: CGPoint(x: 0.00025*width, y: 0.75165*height), control2: CGPoint(x: 0.00969*width, y: 0.76071*height))
          path.addLine(to: CGPoint(x: 0.97933*width, y: 0.76047*height))
          path.addCurve(to: CGPoint(x: width, y: 0.73936*height), control1: CGPoint(x: 0.99082*width, y: 0.76023*height), control2: CGPoint(x: width, y: 0.75085*height))
          path.addCurve(to: CGPoint(x: 0.50016*width, y: 0.23953*height), control1: CGPoint(x: 0.99991*width, y: 0.46335*height), control2: CGPoint(x: 0.77618*width, y: 0.23962*height))
          path.closeSubpath()
          return path
      }
}

struct Star: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99902*width, y: 0.38592*height))
        path.addCurve(to: CGPoint(x: 0.98236*width, y: 0.3714*height), control1: CGPoint(x: 0.99677*width, y: 0.37825*height), control2: CGPoint(x: 0.99027*width, y: 0.37258*height))
        path.addLine(to: CGPoint(x: 0.66207*width, y: 0.32442*height))
        path.addLine(to: CGPoint(x: 0.51816*width, y: 0.03403*height))
        path.addCurve(to: CGPoint(x: 0.51095*width, y: 0.02682*height), control1: CGPoint(x: 0.51636*width, y: 0.03109*height), control2: CGPoint(x: 0.51389*width, y: 0.02862*height))
        path.addCurve(to: CGPoint(x: 0.481*width, y: 0.03403*height), control1: CGPoint(x: 0.50069*width, y: 0.02054*height), control2: CGPoint(x: 0.48728*width, y: 0.02377*height))
        path.addLine(to: CGPoint(x: 0.33794*width, y: 0.32443*height))
        path.addLine(to: CGPoint(x: 0.01765*width, y: 0.3714*height))
        path.addCurve(to: CGPoint(x: 0.00657*width, y: 0.37684*height), control1: CGPoint(x: 0.0135*width, y: 0.37206*height), control2: CGPoint(x: 0.00964*width, y: 0.37395*height))
        path.addCurve(to: CGPoint(x: 0.0057*width, y: 0.40642*height), control1: CGPoint(x: -0.00184*width, y: 0.38477*height), control2: CGPoint(x: -0.00223*width, y: 0.39801*height))
        path.addLine(to: CGPoint(x: 0.23758*width, y: 0.63361*height))
        path.addLine(to: CGPoint(x: 0.18249*width, y: 0.95262*height))
        path.addCurve(to: CGPoint(x: 0.19104*width, y: 0.97312*height), control1: CGPoint(x: 0.18118*width, y: 0.96052*height), control2: CGPoint(x: 0.1845*width, y: 0.96848*height))
        path.addCurve(to: CGPoint(x: 0.21324*width, y: 0.97312*height), control1: CGPoint(x: 0.1978*width, y: 0.97747*height), control2: CGPoint(x: 0.20648*width, y: 0.97747*height))
        path.addLine(to: CGPoint(x: 0.49979*width, y: 0.82237*height))
        path.addLine(to: CGPoint(x: 0.78677*width, y: 0.97312*height))
        path.addCurve(to: CGPoint(x: 0.79617*width, y: 0.97568*height), control1: CGPoint(x: 0.78963*width, y: 0.97477*height), control2: CGPoint(x: 0.79287*width, y: 0.97565*height))
        path.addCurve(to: CGPoint(x: 0.80855*width, y: 0.97269*height), control1: CGPoint(x: 0.8005*width, y: 0.97599*height), control2: CGPoint(x: 0.80483*width, y: 0.97495*height))
        path.addCurve(to: CGPoint(x: 0.81666*width, y: 0.95219*height), control1: CGPoint(x: 0.81485*width, y: 0.96789*height), control2: CGPoint(x: 0.81797*width, y: 0.96*height))
        path.addLine(to: CGPoint(x: 0.762*width, y: 0.63319*height))
        path.addLine(to: CGPoint(x: 0.99389*width, y: 0.40728*height))
        path.addCurve(to: CGPoint(x: 0.99902*width, y: 0.38592*height), control1: CGPoint(x: 0.99941*width, y: 0.40165*height), control2: CGPoint(x: 1.00138*width, y: 0.39344*height))
        path.closeSubpath()
        return path
    }
}

struct Pentagon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99118*width, y: 0.37541*height))
        path.addLine(to: CGPoint(x: 0.51225*width, y: 0.02718*height))
        path.addCurve(to: CGPoint(x: 0.48775*width, y: 0.02718*height), control1: CGPoint(x: 0.50497*width, y: 0.0218*height), control2: CGPoint(x: 0.49503*width, y: 0.0218*height))
        path.addLine(to: CGPoint(x: 0.00882*width, y: 0.37541*height))
        path.addCurve(to: CGPoint(x: 0.00108*width, y: 0.39862*height), control1: CGPoint(x: 0.00132*width, y: 0.38053*height), control2: CGPoint(x: -0.00185*width, y: 0.39002*height))
        path.addLine(to: CGPoint(x: 0.18423*width, y: 0.96224*height))
        path.addCurve(to: CGPoint(x: 0.204*width, y: 0.97686*height), control1: CGPoint(x: 0.187*width, y: 0.97085*height), control2: CGPoint(x: 0.19496*width, y: 0.97674*height))
        path.addLine(to: CGPoint(x: 0.79643*width, y: 0.97686*height))
        path.addCurve(to: CGPoint(x: 0.8162*width, y: 0.96224*height), control1: CGPoint(x: 0.80547*width, y: 0.97674*height), control2: CGPoint(x: 0.81343*width, y: 0.97085*height))
        path.addLine(to: CGPoint(x: 0.99892*width, y: 0.39862*height))
        path.addCurve(to: CGPoint(x: 0.99118*width, y: 0.37541*height), control1: CGPoint(x: 1.00185*width, y: 0.39002*height), control2: CGPoint(x: 0.99868*width, y: 0.38053*height))
        path.closeSubpath()
        return path
    }
}

struct Star_8: Shape {
    func path(in rect: CGRect) -> Path {
         var path = Path()
         let width = rect.size.width
         let height = rect.size.height
         path.move(to: CGPoint(x: 0.98622*width, y: 0.47933*height))
         path.addLine(to: CGPoint(x: 0.75032*width, y: 0.39539*height))
         path.addLine(to: CGPoint(x: 0.85794*width, y: 0.16939*height))
         path.addCurve(to: CGPoint(x: 0.85781*width, y: 0.15253*height), control1: CGPoint(x: 0.86024*width, y: 0.164*height), control2: CGPoint(x: 0.86019*width, y: 0.15789*height))
         path.addCurve(to: CGPoint(x: 0.82996*width, y: 0.14184*height), control1: CGPoint(x: 0.85307*width, y: 0.14188*height), control2: CGPoint(x: 0.8406*width, y: 0.1371*height))
         path.addLine(to: CGPoint(x: 0.60396*width, y: 0.24946*height))
         path.addLine(to: CGPoint(x: 0.52001*width, y: 0.01356*height))
         path.addCurve(to: CGPoint(x: 0.50969*width, y: 0.00323*height), control1: CGPoint(x: 0.51785*width, y: 0.00904*height), control2: CGPoint(x: 0.51421*width, y: 0.0054*height))
         path.addCurve(to: CGPoint(x: 0.48041*width, y: 0.01356*height), control1: CGPoint(x: 0.49876*width, y: -0.002*height), control2: CGPoint(x: 0.48565*width, y: 0.00262*height))
         path.addLine(to: CGPoint(x: 0.39647*width, y: 0.24946*height))
         path.addLine(to: CGPoint(x: 0.1709*width, y: 0.14141*height))
         path.addCurve(to: CGPoint(x: 0.14679*width, y: 0.14571*height), control1: CGPoint(x: 0.16279*width, y: 0.13742*height), control2: CGPoint(x: 0.15302*width, y: 0.13916*height))
         path.addCurve(to: CGPoint(x: 0.14249*width, y: 0.16939*height), control1: CGPoint(x: 0.14031*width, y: 0.1518*height), control2: CGPoint(x: 0.13856*width, y: 0.16141*height))
         path.addLine(to: CGPoint(x: 0.24968*width, y: 0.39539*height))
         path.addLine(to: CGPoint(x: 0.01378*width, y: 0.48019*height))
         path.addCurve(to: CGPoint(x: 0, y: 0.49999*height), control1: CGPoint(x: 0.00557*width, y: 0.48336*height), control2: CGPoint(x: 0.00012*width, y: 0.4912*height))
         path.addCurve(to: CGPoint(x: 0.01421*width, y: 0.51894*height), control1: CGPoint(x: 0.00029*width, y: 0.50866*height), control2: CGPoint(x: 0.00596*width, y: 0.51623*height))
         path.addLine(to: CGPoint(x: 0.24968*width, y: 0.60245*height))
         path.addLine(to: CGPoint(x: 0.14206*width, y: 0.82845*height))
         path.addCurve(to: CGPoint(x: 0.14636*width, y: 0.85256*height), control1: CGPoint(x: 0.1382*width, y: 0.83658*height), control2: CGPoint(x: 0.13993*width, y: 0.84626*height))
         path.addCurve(to: CGPoint(x: 0.17047*width, y: 0.85686*height), control1: CGPoint(x: 0.15259*width, y: 0.85911*height), control2: CGPoint(x: 0.16236*width, y: 0.86086*height))
         path.addLine(to: CGPoint(x: 0.39647*width, y: 0.74924*height))
         path.addLine(to: CGPoint(x: 0.47998*width, y: 0.98514*height))
         path.addCurve(to: CGPoint(x: 0.49978*width, y: 0.99892*height), control1: CGPoint(x: 0.48294*width, y: 0.99351*height), control2: CGPoint(x: 0.49091*width, y: 0.99906*height))
         path.addCurve(to: CGPoint(x: 0.52002*width, y: 0.98558*height), control1: CGPoint(x: 0.50863*width, y: 0.99905*height), control2: CGPoint(x: 0.51665*width, y: 0.99376*height))
         path.addLine(to: CGPoint(x: 0.60396*width, y: 0.74967*height))
         path.addLine(to: CGPoint(x: 0.82996*width, y: 0.85729*height))
         path.addCurve(to: CGPoint(x: 0.85363*width, y: 0.85299*height), control1: CGPoint(x: 0.83794*width, y: 0.86122*height), control2: CGPoint(x: 0.84755*width, y: 0.85947*height))
         path.addCurve(to: CGPoint(x: 0.85794*width, y: 0.82888*height), control1: CGPoint(x: 0.86007*width, y: 0.84669*height), control2: CGPoint(x: 0.86179*width, y: 0.83701*height))
         path.addLine(to: CGPoint(x: 0.75032*width, y: 0.60288*height))
         path.addLine(to: CGPoint(x: 0.98622*width, y: 0.51894*height))
         path.addCurve(to: CGPoint(x: width, y: 0.49914*height), control1: CGPoint(x: 0.99459*width, y: 0.51598*height), control2: CGPoint(x: 1.00014*width, y: 0.50801*height))
         path.addCurve(to: CGPoint(x: 0.98622*width, y: 0.47933*height), control1: CGPoint(x: width, y: 0.4903*height), control2: CGPoint(x: 0.99451*width, y: 0.4824*height))
         path.closeSubpath()
         return path
     }
}

struct CircleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5*width, y: 0))
        path.addCurve(to: CGPoint(x: 0, y: 0.5*height), control1: CGPoint(x: 0.22386*width, y: 0), control2: CGPoint(x: 0, y: 0.22386*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: height), control1: CGPoint(x: 0, y: 0.77614*height), control2: CGPoint(x: 0.22386*width, y: height))
        path.addCurve(to: CGPoint(x: width, y: 0.5*height), control1: CGPoint(x: 0.77595*width, y: 0.99953*height), control2: CGPoint(x: 0.99953*width, y: 0.77594*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0), control1: CGPoint(x: width, y: 0.22386*height), control2: CGPoint(x: 0.77614*width, y: 0))
        path.closeSubpath()
        return path
    }
}
