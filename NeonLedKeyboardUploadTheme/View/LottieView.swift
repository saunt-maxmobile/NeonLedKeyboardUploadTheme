//
//  LottieView.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
    
    enum PlayState {
        case forward
        case reverse
    }
    @State private var playState: PlayState
    
    private let lottieFile: String
    private let lottieAnimationSpeed: CGFloat
    private let lottieLoopMode: LottieLoopMode
    
    init(playState: PlayState = .forward, lottieFile: String, lottieLoopMode: LottieLoopMode = .loop, lottieAnimationSpeed: CGFloat = 1.0) {
        self.playState = playState
        self.lottieFile = lottieFile
        self.lottieLoopMode = lottieLoopMode
        self.lottieAnimationSpeed = lottieAnimationSpeed
    }
 
    let animationView = LottieAnimationView()
 
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
 
        guard let _lottieAnimation: LottieAnimation = LottieAnimation.named(lottieFile)
        else { return view }
        
        self.animationView.animation = _lottieAnimation
        self.animationView.contentMode = .scaleAspectFit
        self.animationView.animationSpeed = self.lottieAnimationSpeed
        self.animationView.loopMode = self.lottieLoopMode

        view.addSubview(self.animationView)
        self.animationView.translatesAutoresizingMaskIntoConstraints = false
        self.animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        self.animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        if self.playState == .forward {
            self.playForward()
        } else {
            self.playReverse()
        }
 
        return view
    }
 
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // do nothing
    }
}

private extension LottieView {
    
    func playForward() {
        self.animationView.play()
    }

    func playReverse() {
        self.animationView.currentProgress = 1
        self.animationView.play(fromProgress: 1, toProgress: 0)
    }
}

struct LottieBindingView: UIViewRepresentable {
    
    enum PlayState {
        case forward
        case reverse
    }
    
    @Binding var playing: Bool
    @State private var playState: PlayState = .forward
    
    private let lottieFile: String
    private let lottieAnimationSpeed: CGFloat
    private let lottieLoopMode: LottieLoopMode
    
    init(playing: Binding<Bool>, playState: PlayState = .forward, lottieFile: String, lottieLoopMode: LottieLoopMode = .loop, lottieAnimationSpeed: CGFloat = 1.0) {
        self._playing = playing
        self.playState = playState
        self.lottieFile = lottieFile
        self.lottieLoopMode = lottieLoopMode
        self.lottieAnimationSpeed = lottieAnimationSpeed
    }
 
    let animationView = LottieAnimationView()
 
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
 
        guard let _lottieAnimation: LottieAnimation = LottieAnimation.named(lottieFile)
        else { return view }
        self.animationView.animation = _lottieAnimation
        self.animationView.contentMode = .scaleAspectFit
        self.animationView.animationSpeed = self.lottieAnimationSpeed
        self.animationView.loopMode = self.lottieLoopMode

        view.addSubview(self.animationView)
        self.animationView.translatesAutoresizingMaskIntoConstraints = false
        self.animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        self.animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        if self.playState == .forward {
            self.playForward()
        } else {
            self.playReverse()
        }
 
        return view
    }
 
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if playing {
            if self.playState == .forward {
                self.playForward()
            } else {
                self.playReverse()
            }
        }
    }
}

private extension LottieBindingView {
    
    func playForward() {
        self.animationView.play()
    }

    func playReverse() {
        self.animationView.currentProgress = 1
        self.animationView.play(fromProgress: 1, toProgress: 0)
    }
}
