// NoteFlier
// Copyright (C) 2022 ItsTheGuy
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

import Foundation
import SwiftUI
import FancyScrollView

struct Recordings: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
        
    var body: some View {
        GeometryReader { viewInfo in
            VStack {
                RoundedRectangle(cornerRadius: 5 / 2.0)
                            .frame(width: 40, height: 5)
                            .foregroundColor(Color.secondary)
                            .padding(24)
                FancyScrollView(title: "Recorded Loops", titleColor: ((colorScheme == .light) ? Color.black:Color.white), scrollUpHeaderBehavior: .parallax, scrollDownHeaderBehavior: .sticky) {
                    VStack {
                        ForEach(Array(recordings), id: \.self) { recording in
                            VStack {
                                HStack {
                                    Text("\(recording.name2Show)").bold().frame(width: (viewInfo.size.width*0.25), height: 56, alignment: .center)
                                    Text("\(recording.path)").font(Font.system(size: 12, design: .monospaced)).frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .onTapGesture() {
                                    let view = UIActivityViewController(activityItems: [recording.path], applicationActivities: nil)
                                    UIApplication.shared.windows.first!.rootViewController?.present(view, animated: true, completion: nil)
                                }
                                if !(recording == recordings[recordings.count-1]) { Divider() }
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .center)
                        } .padding([.trailing, .trailing], 62)
                    }
                }
            }
        }
    }
}