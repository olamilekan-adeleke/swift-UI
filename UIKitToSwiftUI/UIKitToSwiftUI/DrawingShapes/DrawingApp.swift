//
//  DrawingApp.swift
//  UIKitToSwiftUI
//
//  Created by Enigma Kod on 01/04/2023.
//

import SwiftUI

struct Lines {
    var points: [CGPoint]
}

struct DrawingApp: View {
    @State var lines: [Lines] = []

    var body: some View {
        Canvas { ctx, _ in
            for line in lines {
                var path = Path()
                path.addLines(line.points)

                ctx.stroke(path, with: .color(.black), style: StrokeStyle(
                    lineWidth: 5, lineCap: .round, lineJoin: .round
                ))
            }
        }
        
        .gesture(
            DragGesture(minimumDistance: 0, coordinateSpace: .local)
                .onChanged { value in
                    let postion = value.location

                    if value.translation == .zero {
                        lines.append(Lines(points: [postion]))
                    } else {
                        if let lastIdx = lines.indices.last {
                            lines[lastIdx].points.append(postion)
                        }
                    }
                    
                }
        )
    }
}

struct DrawingApp_Previews: PreviewProvider {
    static var previews: some View {
        DrawingApp()
    }
}
