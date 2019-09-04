//
//  ContentView.swift
//  List_SwiftUI
//
//  Created by humiao on 2019/9/4.
//  Copyright © 2019 syc. All rights reserved.
//

import SwiftUI
import UIKit

extension UIColor
{
    var RGBAString: String
    {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return "(\(Int(red * 255)) \(Int(green * 255)) \(Int(blue * 255)) \(alpha))"
    }
}

struct ContentCell: View {
    var contentColor: UIColor
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle().foregroundColor(Color(contentColor))
            Text("\(contentColor.RGBAString)")
                .font(.caption)
                .padding(1)
                .foregroundColor(.white)
                .background(Color.black)
        }
    }
}

struct ListCell: View {
    
    var color: SystemColor
    var darkTaritCollection = UITraitCollection(userInterfaceStyle:.dark)
    var lightTaritCollection = UITraitCollection(userInterfaceStyle: .light)
    
    var body:  some View {
        VStack() {
            HStack(alignment: .center, spacing: 0) {
                ZStack(alignment: .bottom) {
                    ContentCell(contentColor:color.color.resolvedColor(with: lightTaritCollection))
                }
                ZStack(alignment: .bottom) {
                    ContentCell(contentColor:color.color.resolvedColor(with: darkTaritCollection))
                }
            }.frame(height: 100)
            Text("\(color.name)")
                .font(.caption)
                .padding(6)
                .foregroundColor(.white)
                .background(Color.black)
            
        }
    }

}

struct SplitLine: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Rectangle().foregroundColor(.white)
            Rectangle().foregroundColor(.black)
        }
    }
}
struct ContentView: View {
    var body: some View {
        List {
            ForEach(SystemColor.allColors, id: \.name) {
                color in
                ListCell(color: color)
                .listRowBackground(SplitLine())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
