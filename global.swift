// NoteFlier

import Foundation

var recordings: Set<Data.Recording> = [] // Temporal

class Fixed {
    class Eggs {
        class Intro {
            static let title = "✨ New around here? ✨"
            static let subtitle = "This app is called NoteFlier a fancy tone generator that aims to be reallistic, generate good sounds and provide musicians a tool to create random master pieces 🌈"
            static let features: [Data.Eggs.Intro] = [
                .init(icon: "questionmark.app.dashed", text: "Fine tune the effects randomly 🎹 (Reverb, Delay and EQ) (The obstacle changes their values)"),
                .init(icon: "record.circle", text: "Record your tones (when the app restarts the buffer that allocates the path of the recordings are freed up and they're not saved 😓)"),
                .init(icon: "cursorarrow.rays", text: "Export them 🛟 (Go to: Saved Loops and click the Path to export your recordings)"),
                .init(icon: "bubble.left.and.exclamationmark.bubble.right", text: "This is not yet finished as you may notice. There are features that doesn't work for more info head to the README 🐙")
            ]
        }
    }
}
