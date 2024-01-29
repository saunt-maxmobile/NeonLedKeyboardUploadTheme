//
//  ShapeView.swift
//  LogoMaker
//
//  Created by Lê Văn Huy on 24/03/2023.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        ScrollView {
            VStack{
                ForEach(ShapeType.allCases,id: \.self){ shape in
                    Image("background1")
                        .resizable()
                        .frame(width:200,height: 200)
                        .clipShape(shape.toShape)
                }
            }
        }
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
