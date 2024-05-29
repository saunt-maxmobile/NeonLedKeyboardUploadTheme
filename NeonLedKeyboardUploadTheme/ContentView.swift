//
//  ContentView.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    var configDataStorage = ConfigDataStorage.shared
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .inset(by: 5)
                .stroke(Color.black, lineWidth: 5) 
                .frame(width: 300, height: 100)
                .rainbowAnimation(height: 110, duration: 3, neonLinearAnimation: .LTR(nil, 5))
            
            RoundedRectangle(cornerRadius: 10)
                .inset(by: 5)
                .stroke(Color.black, lineWidth: 5)
                .frame(width: 300, height: 100)
                .rainbowAnimation(height: 110, duration: 3, neonLinearAnimation: .RTL(nil, 2))
            
            RoundedRectangle(cornerRadius: 10)
                .inset(by: 5)
                .stroke(Color.black, lineWidth: 5)
                .frame(width: 300, height: 100)
                .rainbowAnimation(height: 110, duration: 3, neonLinearAnimation: .RTL([.yellow, .blue, .red, .yellow], 2))
            
            Button {
                print(ThemeHandler.shared.jpegCount)
                print(ThemeHandler.shared.zipCount)
            } label: {
                Text("Show")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
