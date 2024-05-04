//
//  SystemKeyboard.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2020-12-02.
//  Copyright © 2020-2023 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This keyboard can be used to create alphabetic, numeric and
 symbolic keyboards that mimic the native iOS keyboard.
 
 KeyboardKit will by default use a standard ``SystemKeyboard``
 if you don't provide a custom view. So, if you just want to
 use such a standard keyboard, you don't have to do anything.
 
 If you want to customize the system keyboard, just override
 ``KeyboardInputViewController/viewWillSetupKeyboard()`` and
 call any of the `setup(with:)` functions with a custom view.
 
 For more information on how to customize this view, as well
 as code examples, see <doc:Essentials>.
 */
public struct SystemKeyboard<
    ButtonContent: View,
    ButtonView: View,
    EmojiKeyboard: View,
    Toolbar: View>: View {
    
    /**
     Create a system keyboard based on state and services.
     
     - Parameters:
       - state: The value to fetch observable state from.
       - services: The value to fetch keyboard services from.
       - renderBackground: Whether or not to render the background, by default `true`.
       - buttonContent: The content view to use for buttons.
       - buttonView: The button view to use for an buttons.
       - emojiKeyboard: The emoji keyboard to use for an ``Keyboard/KeyboardType/emojis`` keyboard.
       - toolbar: The toolbar view to add above the keyboard.
     */
    public init(
        state: Keyboard.KeyboardState,
        services: Keyboard.KeyboardServices,
        layoutConfig: KeyboardLayout.Configuration? = nil,
        renderBackground: Bool = true,
        themeObject: [ThemeObject]? = nil,
        myPastes: [MyPaste]? = nil,
        neonPermission: NeonPermission = .init(),
        neonLinearAnimation: NeonLinearAnimation = .none,
        animationValueObjects: [AnimationValueObject]? = nil,
        duration: Double = 5,
        effect: EffectModel? = nil,
        specialKey: String? = nil,
        disableTopButton: Bool = false,
        @ViewBuilder buttonContent: @escaping ButtonContentBuilder,
        @ViewBuilder buttonView: @escaping ButtonViewBuilder,
        @ViewBuilder emojiKeyboard: @escaping EmojiKeyboardBuilder,
        @ViewBuilder toolbar: @escaping ToolbarBuilder
    ) {
        self.init(
            layout: services.layoutProvider.keyboardLayout(for: state.keyboardContext),
            actionHandler: services.actionHandler,
            styleProvider: services.styleProvider,
            layoutConfig: layoutConfig,
            themeObject: themeObject,
            myPastes: myPastes,
            neonPermision: neonPermission,
            neonLinearAnimation: neonLinearAnimation,
            animationValueObjects: animationValueObjects,
            duration: duration,
            effect: effect,
            specialKey: specialKey,
            keyboardContext: state.keyboardContext,
            autocompleteContext: state.autocompleteContext,
            calloutContext: state.calloutContext,
            feedbackConfiguration: state.feedbackConfiguration,
            renderBackground: renderBackground,
            disableTopButton: disableTopButton,
            buttonContent: buttonContent,
            buttonView: buttonView,
            emojiKeyboard: emojiKeyboard,
            toolbar: toolbar
        )
    }
    
    /**
     Create a system keyboard based on raw properties.
     
     - Parameters:
       - layout: The layout to use.
       - actionHandler: The action handler to use.
       - styleProvider: The style provider to use.
       - keyboardContext: The keyboard context to use.
       - autocompleteContext: The autocomplete context to use.
       - calloutContext: The callout context to use.
       - renderBackground: Whether or not to render the background, by default `true`.
       - buttonContent: The content view to use for buttons.
       - buttonView: The button view to use for an buttons.
       - emojiKeyboard: The emoji keyboard to use for an ``Keyboard/KeyboardType/emojis`` keyboard.
       - toolbar: The toolbar view to add above the keyboard.
     */
    public init(
        layout: KeyboardLayout,
        actionHandler: KeyboardActionHandler,
        styleProvider: KeyboardStyleProvider,
        layoutConfig: KeyboardLayout.Configuration? = nil,
        themeObject: [ThemeObject]?,
        myPastes: [MyPaste]?,
        neonPermision: NeonPermission,
        neonLinearAnimation: NeonLinearAnimation,
        animationValueObjects: [AnimationValueObject]?,
        duration: Double,
        effect: EffectModel?,
        specialKey: String?,
        keyboardContext: KeyboardContext,
        autocompleteContext: AutocompleteContext,
        calloutContext: CalloutContext?,
        feedbackConfiguration: FeedbackConfiguration,
        renderBackground: Bool = true,
        disableTopButton: Bool = false,
        @ViewBuilder buttonContent: @escaping ButtonContentBuilder,
        @ViewBuilder buttonView: @escaping ButtonViewBuilder,
        @ViewBuilder emojiKeyboard: @escaping EmojiKeyboardBuilder,
        @ViewBuilder toolbar: @escaping ToolbarBuilder
    ) {
        self.layout = layout
        self.layoutConfig = layoutConfig ?? .standard(for: keyboardContext)
        self.actionHandler = actionHandler
        self.styleProvider = styleProvider
        self.renderBackground = renderBackground
        self.buttonContentBuilder = buttonContent
        self.buttonViewBuilder = buttonView
        self.emojiKeyboardBuilder = emojiKeyboard
        self.toolbarBuilder = toolbar
        _autocompleteContext = ObservedObject(wrappedValue: autocompleteContext)
        _calloutContext = ObservedObject(wrappedValue: calloutContext ?? .disabled)
        _keyboardContext = ObservedObject(wrappedValue: keyboardContext)
        self.items = autocompleteContext.suggestions.map { BarItem($0) }
        
//        self.theme = theme
        self.themeObject = themeObject ?? []
        self.myPastes = myPastes
        self.neonPermission = neonPermision
        self.neonLinearAnimation = neonLinearAnimation
        self.animationValueObjects = animationValueObjects
        self.duration = duration
        self.effect = effect
        self.specialKey = specialKey
        self.disableTopButton = disableTopButton
    }

    /// This typealias defines a button content builder.
    public typealias ButtonContentBuilder = (ButtonContentParams) -> ButtonContent
    
    /// This typealias defines button content builder params.
    public typealias ButtonContentParams = (
        item: KeyboardLayout.Item,
        view: StandardButtonContent)
    
    /// The standard button content view type.
    public typealias StandardButtonContent = KeyboardButton.Content
    
    
    /// This typealias defines a button view builder.
    public typealias ButtonViewBuilder = (ButtonViewParams) -> ButtonView
    
    /// This typealias defines button view builder params.
    public typealias ButtonViewParams = (
        item: KeyboardLayout.Item,
        view: StandardButtonView)
    
    /// The standard button view type.
    public typealias StandardButtonView = SystemKeyboardItem<ButtonContent>
    
    
    /// This typealias defines a emoji keyboard builder.
    public typealias EmojiKeyboardBuilder = (EmojiKeyboardParams) -> EmojiKeyboard
    
    /// This typealias defines emoji keyboard builder params.
    public typealias EmojiKeyboardParams = (
        style: KeyboardStyle.EmojiKeyboard,
        view: StandardEmojiKeyboard)
    
    /// The standard emoji keyboard view type.
    public typealias StandardEmojiKeyboard = Emoji.KeyboardWrapper
    

    /// This typealias defines a toolbar builder.
    public typealias ToolbarBuilder = (ToolbarParams) -> Toolbar

    /// This typealias defines toolbar builder params.
    public typealias ToolbarParams = (
        autocompleteAction: (Autocomplete.Suggestion) -> Void,
        style: KeyboardStyle.AutocompleteToolbar,
        view: StandardToolbarView)

    /// The standard toolbar view type.
    public typealias StandardToolbarView = AutocompleteToolbar<Autocomplete.ToolbarItem, Autocomplete.ToolbarSeparator>

//    MARK: Suggestion
    private let items: [BarItem]
    
    struct BarItem: Identifiable {
        
        init(_ suggestion: Autocomplete.Suggestion) {
            self.suggestion = suggestion
        }
        
        public let id = UUID()
        public let suggestion: Autocomplete.Suggestion
    }
    
    private let actionHandler: KeyboardActionHandler
    private let layout: KeyboardLayout
    private let layoutConfig: KeyboardLayout.Configuration
    private let styleProvider: KeyboardStyleProvider
    private let renderBackground: Bool
    
    private let buttonContentBuilder: ButtonContentBuilder
    private let buttonViewBuilder: ButtonViewBuilder
    private let emojiKeyboardBuilder: EmojiKeyboardBuilder
    private let toolbarBuilder: ToolbarBuilder
    
//    private let theme: Theme
    var context = DataController.shared.container.viewContext
    @State private var themeObject: [ThemeObject]?
    @State private var myPastes: [MyPaste]?
    private let neonPermission: NeonPermission
    private let neonLinearAnimation: NeonLinearAnimation
    private let animationValueObjects: [AnimationValueObject]?
    private let duration: Double
    private let effect: EffectModel?
    private let specialKey: String?
    private let tabbarHeight: CGFloat = 50
    private let disableTopButton: Bool

    public typealias AutocompleteToolbarAction = (Autocomplete.Suggestion) -> Void
    
    private var actionCalloutStyle: KeyboardStyle.ActionCallout {
        var style = styleProvider.actionCalloutStyle
        let insets = layoutConfig.buttonInsets
        style.callout.buttonInset = CGSize(width: insets.leading, height: insets.top)
        return style
    }

    private var inputCalloutStyle: KeyboardStyle.InputCallout {
        var style = styleProvider.inputCalloutStyle
        let insets = layoutConfig.buttonInsets
        style.callout.buttonInset = CGSize(width: insets.leading, height: insets.top)
        return style
    }

    @ObservedObject
    private var autocompleteContext: AutocompleteContext

    @ObservedObject
    private var calloutContext: CalloutContext

    @ObservedObject
    var keyboardContext: KeyboardContext
    
    @State var currentKeyboardTab: KeyboardTab = .normal
    
    @StateObject var keyboardModel: KeyboardModel = .init()
    @StateObject var keyboardContextState = KeyboardStateContext(bundleId: "Constant.KEYBOARD_EXTENSION")

    public var body: some View {
        geoContent
            .opacity(shouldShowEmojiKeyboard ? 0 : 1)
            .overlay(emojiKeyboard(), alignment: .bottom)
            .foregroundColor(styleProvider.foregroundColor)
            .background(renderBackground ? styleProvider.backgroundStyle.backgroundView : nil)
            .keyboardCalloutContainer(
                calloutContext: calloutContext,
                keyboardContext: keyboardContext,
                actionCalloutStyle: actionCalloutStyle,
                inputCalloutStyle: inputCalloutStyle,
                effect: effect
            )
    }
}

private extension SystemKeyboard {
    
    var shouldShowEmojiKeyboard: Bool {
        switch keyboardContext.keyboardType {
        case .emojis: return true
        default: return false
        }
    }
}

private extension SystemKeyboard {
    
    var geoContent: some View {
//        bodyContent(
//            for: .init(width: 100, height: 0)
//        )
//        .disabled(true)
//        .opacity(0)
//        .overlay(GeometryReader(content: bodyContent))
        
        VStack {
        }
        .frame(maxWidth: .infinity)
        .frame(height: layoutConfig.rowHeight * 4 + tabbarHeight + 10)
        .overlay(GeometryReader(content: bodyContent))
    }
    
    func bodyContent(for geo: GeometryProxy) -> some View {
        bodyContent(for: geo.size)
    }
    
    func bodyContent(for size: CGSize) -> some View {
        VStack(spacing: 0) {
            sceneView(size)
        }
    }
    
//    MARK: Keyboard View
    @ViewBuilder
    private func keyboard(_ size: CGSize) -> some View {
        Group {
            if neonPermission.disableNeonCharacter && neonPermission.disableNeonButton && !neonPermission.disableNeonBorder {
                keyboardEnableNeonCharacter(size)
            } else
            if neonPermission.disableNeonCharacter {
                keyboardDisableNeonCharacter(size)
            } else {
                keyboardEnableNeonCharacter(size)
            }
        }
    }
    
    @ViewBuilder
    func keyboardDisableNeonCharacter(_ size: CGSize) -> some View {
        systemKeyboardOverlay(for: size)
            .rainbowAnimation(height: layoutConfig.rowHeight * 4, duration: duration, neonLinearAnimation: neonLinearAnimation, animationValueObjects: animationValueObjects)
            .overlay {
                systemKeyboardOverlay(for: size, enableAction: true, overlayKeyboard: true)
            }
    }
    
    @ViewBuilder
    func keyboardEnableNeonCharacter(_ size: CGSize) -> some View {
        systemKeyboardOverlay(for: size, enableAction: true)
            .overlay {
                systemKeyboardOverlay(for: size, overlayKeyboard: true)
                    .rainbowAnimation(height: layoutConfig.rowHeight * 4, duration: duration, neonLinearAnimation: neonLinearAnimation, animationValueObjects: animationValueObjects)
            }
    }

    func systemKeyboard(for size: CGSize, overlayKeyboard: Bool = false) -> some View {
        VStack(spacing: 0) {
            ForEach(Array(layout.itemRows.enumerated()), id: \.offset) {
                items(for: size, layout: layout, itemRow: $0.element, overlayKeyboard: overlayKeyboard)
            }
        }
        .padding(styleProvider.keyboardEdgeInsets)
        .environment(\.layoutDirection, .leftToRight)
    }
    
//    MARK: SystemkeyboardOverlay
    func systemKeyboardOverlay(for size: CGSize, enableAction: Bool = false, overlayKeyboard:Bool = false) -> some View {
        VStack(spacing: 0) {
            ForEach(Array(layout.itemRows.enumerated()).map({ $0 }).indices, id: \.self) { row in
                HStack (spacing: 0) {
                    ForEach(layout.itemRows[row].indices, id: \.self) { column in
                        SystemKeyboardItem(
                            item: layout.itemRows[row][column],
                            row: row,
                            column: column,
                            specialKey: specialKey,
                            actionHandler: actionHandler,
                            styleProvider: styleProvider,
                            keyboardContext: keyboardContext,
                            calloutContext: calloutContext,
                            keyboardWidth: size.width,
                            inputWidth: layout.inputWidth(for: size.width),
                            overlayKeyboard: overlayKeyboard,
                            neonPermission: neonPermission,
                            enableAction: enableAction,
                            content: buttonContent(for: layout.itemRows[row][column])
                        )
                    }
                }
            }
        }
        .padding(styleProvider.keyboardEdgeInsets)
        .environment(\.layoutDirection, .leftToRight)
        .allowsHitTesting(enableAction)
    }
    
    private var contentOpacity: Double {
        keyboardContext.isSpaceDragGestureActive ? 0 : 1
    }
    
    private func buttonView(for item: KeyboardLayout.Item, size: CGSize, enableAction: Bool = false, overlayKeyboard: Bool) -> some View {
        
        @State var isPressed = false
        @State var specialCharacter = ""
        
        return Group {
            if enableAction {
                buttonContent(for: item)
                    .opacity(contentOpacity)
                    .animation(.default, value: keyboardContext.isSpaceDragGestureActive)
                    .keyboardLayoutItemSize(
                        for: item,
                        rowWidth: size.width,
                        inputWidth: layout.inputWidth(for: size.width))
                    .keyboardButton(
                        for: item.action,
                        style: buttonStyleOverlay(for: item, isPressed: isPressed, overlayKeyboard: overlayKeyboard),
                        actionHandler: actionHandler,
                        keyboardContext: keyboardContext,
                        calloutContext: calloutContext,
                        edgeInsets: item.edgeInsets
                    )
            } else {
                buttonContent(for: item)
                    .opacity(contentOpacity)
                    .animation(.default, value: keyboardContext.isSpaceDragGestureActive)
                    .keyboardLayoutItemSize(
                        for: item,
                        rowWidth: size.width,
                        inputWidth: layout.inputWidth(for: size.width))
                    .keyboardButtonStyle(buttonStyleOverlay(for: item, isPressed: isPressed, overlayKeyboard: overlayKeyboard))
                    .padding(item.edgeInsets)
                    .contentShape(Rectangle())
            }
        }
    }
    
    private var showSpecialKey: Bool {
//        return sharedDefault.bool(forKey: Constant.SHOW_SPECIAL_KEY)
        return true
    }
    
    private func buttonStyleOverlay(for item: KeyboardLayout.Item, isPressed: Bool, overlayKeyboard: Bool) -> KeyboardStyle.Button {
        
        var style = item.action.isSpacer ? .spacer : styleProvider.buttonStyle(for: item.action, isPressed: isPressed)
        
        if overlayKeyboard {
            if neonPermission.disableNeonCharacter {
                if !neonPermission.disableNeonButton {
                    style.background = .color(.clear)
                }
                
                if !neonPermission.disableNeonBorder {
                    style.borderColor = .clear
                }
            } else {
                if neonPermission.disableNeonButton {
                    style.background = .color(.clear)
                }
                
                if neonPermission.disableNeonBorder {
                    style.borderColor = .clear
                }
            }
        }
        
        return style
    }
    
    func items(
        for size: CGSize,
        layout: KeyboardLayout,
        itemRow: KeyboardLayout.ItemRow,
        overlayKeyboard: Bool
    ) -> some View {
        HStack(spacing: 0) {
            ForEach(Array(itemRow.enumerated()), id: \.offset) {
                buttonView(for: $0.element, keyboardSize: size, overlayKeyboard: overlayKeyboard)
            }.id(keyboardContext.locale.identifier)
        }
    }
}

// MARK: Enum tab style
extension SystemKeyboard {
    enum KeyboardTab: CaseIterable {
        case setting, art, /*theme,*/ paste, normal
        
        var icon: String {
            switch self {
            case .normal:
                return ""
            case .setting:
                return "tabbar_keyboard_setting"
            case .art:
                return "tabbar_keyboard_art"
//            case .theme:
//                return "tabbar_keyboard_theme"
//            case .font:
//                return "tabbar_keyboard_font"
            case .paste:
                return "tabbar_keyboard_paste"
            }
        }
    }
    
    @ViewBuilder
    func sceneView(_ size: CGSize) -> some View {
        VStack {
            switch currentKeyboardTab {
            case .normal:
                normalView(size)
            case .setting:
                settingView
//            case .theme:
//                themeView()
            case .art:
                artView()
            case .paste:
                pasteView()
            }
        }
        .frame(maxWidth: .infinity)
    }
    
//    MARK: Normal View
    @ViewBuilder
    private func normalView(_ size: CGSize) -> some View {
        VStack (spacing: 10) {
            
            if items.isEmpty {
                tabbar()
            } else {
                suggestionBar()
            }
            
            keyboard(size)
        }
        .id(keyboardContext.locale.identifier)
    }
    
    private func tabbar() -> some View {
        HStack (spacing: 10) {
            ForEach(KeyboardTab.allCases, id: \.self) { tab in
                if !tab.icon.isEmpty {
                    Image(tab.icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .padding(.horizontal, 5)
                        .onTapGesture {
                            currentKeyboardTab = tab
                        }
                }
            }
        }
        .padding(.horizontal)
        .frame(height: tabbarHeight)
        .frame(maxWidth: .infinity, alignment: .leading)
        .disabled(disableTopButton)
    }
    
    private func suggestionBar() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(items) { item in
                    Text("\(item.suggestion.text)")
                        .font(.system(size: item.suggestion.isAutocorrect ? 20 : 15))
                        .foregroundColor(Color(hex: "636F7D") )
                        .onTapGesture {
                            actionHandler.handle(item.suggestion)
                        }
                }
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .frame(height: tabbarHeight)
        }
    }
    
//    MARK: setting tab
    @ViewBuilder
    private var settingView: some View {
        VStack (spacing: 10) {
            backButton
            
            ScrollView(showsIndicators: false ) {
                
                VStack {
                    
                    if !keyboardContextState.isFullAccessEnabled {
                        Text("You need allow full access to enable this action")
                        
                        Button(action: {
                            let settingsUrl = URL(string: "neonLedKeyboard://openKeyboardSetting")!
                            
                            actionHandler.handle(.url(settingsUrl, id: UUID().uuidString))
                        }, label: {
                            Text("Go to setting")
                        })
                    }
                    
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], content: {
                        
                        /// done
                        VStack {
                            Circle()
                                .frame(width: 50)
                                .foregroundColor(Color(hex: "565C63")!)
                                .overlay {
                                    ZStack {
                                        Image("Keyboard.Setting.ShowSpecialCharacter")
                                            .resizable()
                                            .scaledToFit()
                                            .padding(.all, 10)
                                        
                                        Circle()
                                            .stroke(keyboardModel.value.showSpecialKey ? .blue : .clear, lineWidth: 2)
                                    }
                                    
                                }
                            
                            Text("Show special Character")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .multilineTextAlignment(.center)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            keyboardModel.value.showSpecialKey.toggle()
                        }
                        
                        /// done
                        VStack {
                            Circle()
                                .frame(width: 50)
                                .foregroundColor(Color(hex: "565C63")!)
                                .overlay {
                                    ZStack {
                                        Image("Keyboard.Setting.ShowSuggestion")
                                            .resizable()
                                            .scaledToFit()
                                            .padding(.all, 10)
                                        
                                        Circle()
                                            .stroke(keyboardModel.value.showSuggestion ? .blue : .clear, lineWidth: 2)
                                    }
                                    
                                }
                            
                            Text("Show suggestion")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .multilineTextAlignment(.center)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            keyboardModel.value.showSuggestion.toggle()
                            autocompleteContext.isEnabled = keyboardModel.value.showSuggestion
                        }
                        
                        /// done
                        VStack {
                            Circle()
                                .frame(width: 50)
                                .foregroundColor(Color(hex: "565C63")!)
                                .overlay {
                                    ZStack {
                                        Image("Keyboard.Setting.AutoComplete")
                                            .resizable()
                                            .scaledToFit()
                                            .padding(.all, 10)
                                        
                                        Circle()
                                            .stroke(keyboardModel.value.autoComplete ? .blue : .clear, lineWidth: 2)
                                    }
                                    
                                }
                            
                            Text("auto complete")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .multilineTextAlignment(.center)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            keyboardModel.value.autoComplete.toggle()
                        }
                        
                        VStack {
                            Circle()
                                .frame(width: 50)
                                .foregroundColor(Color(hex: "565C63")!)
                                .overlay {
                                    ZStack {
                                        Image("Keyboard.Setting.AutoCapitalization")
                                            .resizable()
                                            .scaledToFit()
                                            .padding(.all, 10)
                                        
                                        Circle()
                                            .stroke(keyboardModel.value.autoCapital ? .blue : .clear, lineWidth: 2)
                                    }
                                }
                            
                            Text("Auto capitalization")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .multilineTextAlignment(.center)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            keyboardModel.value.autoCapital.toggle()
                            keyboardContext.autocapitalizationTypeOverride = Keyboard.AutocapitalizationType.getType(keyboardModel.value.autoCapital ? Keyboard.AutocapitalizationType.sentences.rawValue : Keyboard.AutocapitalizationType.none.rawValue)
                        }
                        
                        VStack {
                            Circle()
                                .frame(width: 50)
                                .foregroundColor(Color(hex: "565C63")!)
                                .overlay {
                                    ZStack {
                                        Image("Keyboard.Setting.DoubleSpace")
                                            .resizable()
                                            .scaledToFit()
                                            .padding(.all, 10)
                                        
                                        Circle()
                                            .stroke(keyboardModel.value.doubleSpacePeriod ? .blue : .clear, lineWidth: 2)
                                    }
                                }
                            
                            Text("Double space period")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .multilineTextAlignment(.center)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            keyboardModel.value.doubleSpacePeriod.toggle()
                        }
                        
                        VStack {
                            Circle()
                                .frame(width: 50)
                                .foregroundColor(Color(hex: "565C63")!)
                                .overlay {
                                    ZStack {
                                        Image("Keyboard.Setting.Sound")
                                            .resizable()
                                            .padding(.all, 10)
                                        
                                        Circle()
                                            .stroke(keyboardModel.value.keySound ? .blue : .clear, lineWidth: 2)
                                    }
                                }
                            
                            Text("key sound")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .multilineTextAlignment(.center)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            keyboardModel.value.keySound.toggle()
                        }
                        
                        VStack {
                            //                        Circle()
                            //                            .frame(width: 50)
                            //                            .foregroundColor(Color(hex: "565C63")!)
                            
                            Image("tabbar_keyboard_setting")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            Text("Settings")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .multilineTextAlignment(.center)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            let url = URL(string: "neonLedKeyboard://settings")!
                            actionHandler.handle(.url(url, id: UUID().uuidString))
                        }
                    })
                    .disabled(!keyboardContextState.isFullAccessEnabled)
                }
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: layoutConfig.rowHeight * 4)
        }
    }
    
    private var backButton: some View {
        HStack {
            Button {
                currentKeyboardTab = .normal
            } label: {
                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12)
                    
                    Text("Back")
                }
                .foregroundColor(.white)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: tabbarHeight)
    }
    
//    MARK: Theme tab
    @ViewBuilder
    private func themeView() -> some View {
        VStack {
            backButton
            
            ScrollView(showsIndicators: false, content: {
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                ], content: {
                    ForEach(themeObject ?? [], id: \.self) { item in
//                        if let background: KeyboardStyle.Background = item.background?.getBackground() {
//                            background.backgroundView
//                        item.background?.getBackground()?.backgroundView
                            Circle()
                                .frame(height: 50)
                                .clipShape(Circle())
                                .overlay(content: {
                                    Circle()
                                        .stroke(item.isSelect ? .blue : .clear, lineWidth: 2)
                                })
                                .onTapGesture {
                                    
                                }
                        }
//                    }
                })
            })
            .frame(maxWidth: .infinity)
            .frame(height: layoutConfig.rowHeight * 4)
        }
        .onAppear {
            DispatchQueue.main.async(execute: {
                self.loadThemeData()
            })
            
        }
        .onDisappear {
            DispatchQueue.main.async(execute: {
                self.removeThemeData()
            })
        }
    }
    
    private func loadThemeData() {
        do {
            let requestThemeObject = ThemeObject.fetchRequest()
            self.themeObject = try context.fetch(requestThemeObject)
        } catch {
            print("error request theme object")
        }
    }
    
    private func removeThemeData() {
        self.themeObject = []
    }
    
//    MARK: Art tab
    @ViewBuilder
    private func artView() -> some View {
        
        @State var longPressTimer: Timer?
        @State var focus: Bool = false
        
        VStack (spacing: 10) {
            backButton
            
            ScrollView(showsIndicators: false ) {
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], content: {
//                    ForEach(textArtData.data, id: \.self) { item in
//                        Text(item)
//                            .font(.system(size: 8))
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .padding(.all)
//                            .foregroundColor(.black)
//                            .background(.white)
//                            .onTapGesture {
//                                actionHandler.handle(.character(item))
//                            }
//                    }
                })
            }
            .frame(maxWidth: .infinity)
            .frame(height: layoutConfig.rowHeight * 4)
        }
    }
    
//    MARK: Paste tab
    @ViewBuilder
    private func pasteView() -> some View {
        VStack (spacing: 10) {
            backButton
            ScrollView(.horizontal, showsIndicators: false ) {
                LazyHGrid(rows: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], content: {
                    ForEach(myPastes ?? [], id: \.self) { item in
                        Text(item.value ?? "")
                            .font(.system(size: 8))
                            .frame(width: 100)
                            .frame(maxHeight: .infinity)
                            .padding(.all)
                            .foregroundColor(.black)
                            .background(.white)
                            .onTapGesture {
                                actionHandler.handle(.character(item.value ?? ""))
                            }
                    }
                })
                .padding(.bottom)
            }
            .frame(maxWidth: .infinity)
            .frame(height: layoutConfig.rowHeight * 4)
        }
        .onAppear {
            DispatchQueue.main.async(execute: {
                self.loadMyPastesData()
            })
        }
        .onDisappear {
            DispatchQueue.main.async(execute: {
                self.removeMyPastesData()
            })
        }
    }
    
    private func loadMyPastesData() {
        do {
            let requestThemeObject = MyPaste.fetchRequest()
            self.myPastes = try context.fetch(requestThemeObject)
        } catch {
            print("error request myPastes object")
        }
    }
    
    private func removeMyPastesData() {
        self.myPastes = []
    }
}

private extension SystemKeyboard {
    
    func buttonContent(
        for item: KeyboardLayout.Item
    ) -> ButtonContent {
        buttonContentBuilder((
            item: item,
            view: KeyboardButton.Content(
                action: item.action,
                styleProvider: styleProvider,
                keyboardContext: keyboardContext
            )
        ))
    }
    
    func buttonView(
        for item: KeyboardLayout.Item,
        keyboardSize: CGSize,
        overlayKeyboard: Bool
    ) -> ButtonView {
        buttonViewBuilder((
            item: item,
            view: SystemKeyboardItem(
                item: item,
                actionHandler: actionHandler,
                styleProvider: styleProvider,
                keyboardContext: keyboardContext,
                calloutContext: calloutContext,
                keyboardWidth: keyboardSize.width,
                inputWidth: layout.inputWidth(for: keyboardSize.width),
                overlayKeyboard: overlayKeyboard,
                neonPermission: neonPermission, enableAction: true,
                content: buttonContent(for: item)
            )
        ))
    }
    
    func emojiKeyboard() -> some View {
        emojiKeyboardBuilder((
            style: KeyboardStyle.EmojiKeyboard.standard(for: keyboardContext),
            view: Emoji.KeyboardWrapper(
                layout: layout,
                actionHandler: actionHandler,
                keyboardContext: keyboardContext,
                calloutContext: calloutContext,
                styleProvider: styleProvider
            )

        ))
        .opacity(shouldShowEmojiKeyboard ? 1 : 0)
    }
    
    func toolbar() -> some View {
        toolbarBuilder((
            autocompleteAction: actionHandler.handle(_:),
            style: styleProvider.autocompleteToolbarStyle,
            view: AutocompleteToolbar(
                suggestions: autocompleteContext.suggestions,
                locale: keyboardContext.locale,
                style: styleProvider.autocompleteToolbarStyle,
                suggestionAction: actionHandler.handle(_:)
            )
        ))
    }
}


#if os(iOS) || os(tvOS)
/**
 `IMPORTANT` In previews, you must provide a custom width to
 get buttons to show up, since there is no shared controller.
 */
struct SystemKeyboard_Previews: PreviewProvider {

    struct Preview: View {

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]
            
            let theme: Theme = .init(id: UUID().uuidString,
                button: .init(
                    background: .color(.blue),
                    foregroundColor: .white,
                    font: .custom("Poppins", size: 18),
                    cornerRadius: 10,
                    border: .init(color: .white, size: 5)
                ),
                background: .color(.red),
                actionCallout: .neon,
                inputCallout: .neon,
                sound: .init(name: "", volume: 5),
                durationAnimation: 6,
                neonLinearAnimation: .radial(nil),
                preview: .image(UIImage(named: "portraitNeonDogPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
                name: "Poppins"
            )
            
            controller.services.styleProvider = CustomKeyStyleProvider(buttonStyle: theme.button, actionCallout: theme.actionCallout ?? .bright, inputCallout: theme.inputCallout ?? .bright, keyboardContext: controller.state.keyboardContext)
            
            controller.state.keyboardContext.setLocale(.kurdish_sorani_pc)
            return controller
        }()
        
        var emojiKeyboard: some View {
            Button {
                controller.state.keyboardContext.keyboardType = .alphabetic(.lowercased)
            } label: {
                Color.red
                    .overlay(Text("Not implemented"))
            }
        }
        
        var keyboard: some View {
            SystemKeyboard(
                state: controller.state,
                services: controller.services,
                themeObject: [],
                neonPermission: .init(
                    disableNeonCharacter: true,
//                    disableNeonBorder: true,
                    disableNeonButton: true
                ),
                buttonContent: { $0.view },
                buttonView: { $0.view },
                emojiKeyboard: { $0.view },
                toolbar: { $0.view }
            )
        }

        var body: some View {
            VStack(spacing: 10) {
                Group {
                    SystemKeyboard(
                        state: controller.state,
                        services: controller.services,
                        themeObject: [],
                        neonPermission: .init(
                            disableNeonCharacter: true,
//                            disableNeonBorder: true
                            disableNeonButton: true
                        ),
                        effect: .init(name: "Effect.CatUp", duration: 800),
                        buttonContent: { param in
                            switch param.item.action {
                            case .backspace:
                                Image(systemName: "trash").foregroundColor(Color.red)
                            default: param.view
                            }
                        },
                        buttonView: { param in
                            switch param.item.action {
                            case .space:
                                Text("This is a space bar replacement")
                                    .frame(maxWidth: .infinity)
                                    .multilineTextAlignment(.center)
                            default: param.view
                            }
                        },
                        emojiKeyboard: { _ in
                            emojiKeyboard
                        },
                        toolbar: { $0.view }
                    )
                }
                .background(Color.yellow)
            }
        }
    }

    static var previews: some View {
        Preview()
    }
}
#endif

extension Notification.Name {
    static var CHANGE_THEME_KEYBOARD = Notification.Name("CHANGE_THEME_KEYBOARD")
}
