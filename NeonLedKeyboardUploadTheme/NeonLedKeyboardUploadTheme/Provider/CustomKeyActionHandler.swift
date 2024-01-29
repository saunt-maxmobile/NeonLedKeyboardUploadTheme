//
//  CustomKeyActionHandler.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
import AVFoundation

class CustomKeyActionHandler: StandardKeyboardActionHandler {
    
    var theme: Theme?
    var allowDoubleSpace: Bool = true
    
    var player: AVAudioPlayer?
    
    init(theme: Theme? = nil, controller: KeyboardInputViewController) {
        super.init(controller: controller, keyboardContext: controller.state.keyboardContext, keyboardBehavior: controller.services.keyboardBehavior, autocompleteContext: controller.state.autocompleteContext, feedbackConfiguration: controller.state.feedbackConfiguration)
        self.theme = theme
    }
    
    override func triggerAudioFeedback(for gesture: StandardKeyboardActionHandler.Gesture, on action: KeyboardAction) {
//        let feedback = audioFeedback(for: gesture, on: action)
//        feedback?.trigger()
        if let soundName = theme?.sound?.name {
            if theme?.sound?.specialSoundCharacter ?? false {
                switch action {
                case .character(let character):
                    playAudio(soundName, actionCharacter: character)
                default:
                    break
                }
            } else {
                playAudio(soundName)
            }
        }
    }
    
    private func playAudio(_ soundName: String) {
        if let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                guard let player = player else { return }
                
                player.prepareToPlay()
                player.play()
                
            } catch let error as NSError {
                print(error.description)
            }
        }
    }
    
    private func playAudio(_ soundName: String, actionCharacter: String) {
        if let soundURL = Bundle.main.url(forResource: "\(soundName)\(actionCharacter)", withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                guard let player = player else { return }
                
                player.prepareToPlay()
                player.play()
                
            } catch let error as NSError {
                print(error.description)
            }
        }
    }
}
