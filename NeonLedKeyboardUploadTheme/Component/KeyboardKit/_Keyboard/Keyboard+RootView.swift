//
//  Keyboard+RootView.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2022-02-04.
//  Copyright © 2022-2023 Daniel Saidi. All rights reserved.
//

import SwiftUI

extension Keyboard {
    
    /**
     This view is used as a wrapper view, to be able to bind the
     keyboard view to properties that affect your layout.
     */
    struct RootView<ViewType: View>: View {
        
        init(@ViewBuilder _ view: @escaping () -> ViewType) {
            self.view = view
        }
        
        var view: () -> ViewType
        
        @EnvironmentObject
        private var autocompleteContext: AutocompleteContext
        
        @EnvironmentObject
        private var calloutContext: CalloutContext
        
        @EnvironmentObject
        private var keyboardContext: KeyboardContext
        
        var body: some View {
            view()
        }
    }
}
