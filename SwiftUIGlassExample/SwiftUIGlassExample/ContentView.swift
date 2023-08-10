//
//  ContentView.swift
//  SwiftUIGlassExample
//
//  Created by David Lin on 10.08.23.
//

import SwiftUI
import SwiftUIGlass

struct ContentView: View {
    let vegetables: [Vegetable] = [
            Vegetable(name: "🥕 Carrot"),
            Vegetable(name: "🥦 Broccoli"),
            Vegetable(name: "🍅 Tomato"),
            Vegetable(name: "🥒 Cucumber"),
            Vegetable(name: "🫑 Paprika"),
            Vegetable(name: "🥬 Lettuce"),
            Vegetable(name: "🥔 Potato"),
            Vegetable(name: "🌽 Corn"),
            Vegetable(name: "🫐 Blueberries"),
            Vegetable(name: "🍄 Mushroom"),
            Vegetable(name: "🌶️ Chili Pepper"),
            Vegetable(name: "🍠 Sweet Potato"),
            Vegetable(name: "🥗 Salad"),
        ]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ZStack {
            // Vibrant Background
            Color.gray
                .opacity(0.25)
                .ignoresSafeArea()

            Color.white
                .opacity(0.7)
                .blur(radius: 200)
                .ignoresSafeArea()

            GeometryReader { proxy in
                let size = proxy.size

                Circle()
                    .fill(.purple)
                    .padding(50)
                    .blur(radius: 120)
                    .offset(x: -size.width/1.8, y: -size.height/5)

                Circle()
                    .fill(.blue)
                    .padding(50)
                    .blur(radius: 150)
                    .offset(x: size.width/1.8, y: size.height/2)
            }

            TabView {
                // Glass View
                Text("Hello World! 🌐")
                    .padding()
                    .glass(cornerRadius: 15.0)


                // Glass Pane
                GlassPane(cornerRadius: 20) {
                    Text("Hello World! 🌐")
                }
                .padding(EdgeInsets(top: 2, leading: 10, bottom: 70, trailing: 10))

                // GlassList
                GlassList(items: vegetables, cornerRadius: 20.0) { vegetable in
                    Text("\(vegetable.name)")
                  }
                .cornerRadius(20.0)
                .padding()

                // GlassLazyVGrid
                GlassLazyVGrid(items: vegetables, columns: columns, cornerRadius: 10.0, spacing: 16) { vegetable in
                    Text("\(vegetable.name)")
                        .padding()
                }
                .padding()
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
